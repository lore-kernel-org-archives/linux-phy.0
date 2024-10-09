Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529B9CEE351
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 21:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZKTyq6p86EOdJdFISi6KhQGfznJ4mLCXeGGY5ATnxQ=; b=FaxAX9Vx6xwTin
	zOcv0yXGRPoeKV+AZ2ObB/ykGKo95ybRvJxBK7lLM9tLKiERPsHF3/mzPeOHynOZySOJ1+RQ3so7Y
	GGcASla8yUPNOzbw2Y6wUOjzMUB8uRzo66fu90pfDfj7BQAYhMNmSTBGXat1wh017VftztiIPPXRW
	fJIVQor0IM3ktuBLf8CyV5qAa9e4GWKA2glnL4Vd5JPN1QqSAJ/I4MnL+a3J85rNFbYvYehjtT2pl
	TrkjX7lyy0Auyxj3AQMGz2R8VroY4F9bF2sPUllPNgQFdyW/DdUkyePsWcoVWJoNswfh2fAHwcE7p
	9pTZ8tq6h2Be1bWkU04g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syeBT-0000000AmTp-06uj;
	Wed, 09 Oct 2024 21:25:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syeBG-0000000AmRX-0flh
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 21:25:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A4125C5DE7;
	Wed,  9 Oct 2024 21:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F389DC4CEC3;
	Wed,  9 Oct 2024 21:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728509113;
	bh=zGQ1oAmmhv3exYJ6k47YJiOIx8k+EBmLwHZjg/sNWW0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XhY37mmst/dBgJAUUO4s5o6+W2aE/gjZFJgVHocTjK5OnEXZ0x+rJuOCMULKKiK8H
	 nLqLQvPFVOvg0uVltbrtZSg9uBbjo8FE/r04aEgYpuAz+aUxLsEDuH8065cUAF34U6
	 7aMp12hzzOKmUt91c3pOQw3a9syBLNhWNGDCuYgqCvp9hzlmclvz4pMCfuJS6FHJcj
	 AHoAFfX+RU4Z6SWkvegWsQEYpitJNI2U5wKpIoQc7gaC/su/ShQ37gR6L1mISSpqZS
	 cT1Oav+QSadSeTehyYDVXFhOspcFRVDGuc+YnS5ro2VP4L6KRwjePaEBkDCSA+KhMa
	 vDmgRuo1hPPdw==
Date: Wed, 9 Oct 2024 16:25:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	quic_jackp@quicinc.com, linux-phy@lists.infradead.org,
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	Mantas Pucka <mantas@8devices.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	quic_ppratap@quicinc.com, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for QCS8300
Message-ID: <172850911122.740165.2459258635220849747.robh@kernel.org>
References: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
 <20241009195348.2649368-3-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009195348.2649368-3-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_142514_337228_CEEF5506 
X-CRM114-Status: UNSURE (   7.69  )
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


On Thu, 10 Oct 2024 01:23:46 +0530, Krishna Kurapati wrote:
> Update dt-bindings to add QCS8300 to USB2 SNPS Femto Phy list.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
