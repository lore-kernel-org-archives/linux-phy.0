Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A868FC54734
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 10:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGmB7FnM+RTLIrkjgetKv5dNRTlkGJdJoFuy15Qt6WE=; b=CvHGb76uXIeMyu
	uRfN9qLhXqGK7q4ts9D8oUZ9ZAEs4pn9ZTsLXQoQwUNqbdRZT6jVwGPiviccLZc/oc6G43xKS+QVr
	rd++USBygw1BZbKAUYETtDPU97b/JZ9ZvX59iO2fJ90DOk3UmStRYRtoUFSRa9nVN4tviRVySvgIa
	R3tPSjiLcDdbxa9jimZ9/B9uhGwGiRF3I3m1QWw2ZboUPRSlqfFwv3K+nynniXH68ceRRY8bdQywM
	/bqnkqGcCYS9vOF6fICDLNHe2o8apW4iy8a8WRrbLvwzvtsM33M2IyFKye9RMrgl3v2l3tJ/JhquA
	087fp8bGCJW8sAN1rA3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitGz-0000000AmKy-1XPy;
	Tue, 27 Aug 2024 10:18:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitGP-0000000Am9k-3IJU
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 10:17:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 70194CE1153;
	Tue, 27 Aug 2024 10:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A31DC8B7A5;
	Tue, 27 Aug 2024 10:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724753413;
	bh=iIII8uSaRKyDOpwUGIfxHC4xjAJBRRgRehDKNEWdEG0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JHr5GMv8Ve+9ftdjUm5Tp/80LIlua4wDiK/fmJ3QiA/YbpZ6V3l92PeV2CVAcxbmd
	 M14GYFkCGn3nLCXu2T7Utirem121ZDhVGIxcVeR4oVHSIuYAwd197B/Adbwwa64tsc
	 Spp2WQhGVD7vvPHL2DgkFXHN3eSMRxV3PZ6GZ8lXfuDuNxrWwfpx1SLPdkVAYIlBFq
	 Xe0AC8HYcdBIfHNFw0u9ppeapApXhZWJLkr8LMYzE+HYbOyXOKNgRUuwN+lHMISIbO
	 Y0Y/ezuoBMFQKfWkLOJN2zNqnJi+R3plJ9OkG2kz6lA4UrSW5oCifEKeUtiWmVfsSB
	 qIYUYiodKubIA==
Message-ID: <9ae8b751-a6df-4775-a207-0d203f7415de@kernel.org>
Date: Tue, 27 Aug 2024 12:10:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2
 clocks
To: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, Mike Tipton <quic_mdtipton@quicinc.com>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-7-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240827063631.3932971-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_031726_324558_5B2891CB 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27.08.2024 8:36 AM, Qiang Yu wrote:
> The pipediv2_clk's source from the same mux as pipe clock. So they have
> same limitation, which is that the PHY sequence requires to enable these
> local CBCs before the PHY is actually outputting a clock to them. This
> means the clock won't actually turn on when we vote them. Hence, let's
> skip the halt bit check of the pipediv2_clk, otherwise pipediv2_clk may
> stuck at off state during bootup.
> 
> Suggested-by: Mike Tipton <quic_mdtipton@quicinc.com>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---


Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
