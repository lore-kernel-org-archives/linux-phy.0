Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59B3AC3ABCB
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 23:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzSNbExCvzSGsIsk6SxGW2WIBf573PZ8A/2/DUW6TKc=; b=Uaqn+v+XEMPXDa
	ZZhCMbo8dpIXJGrl9XQUd2tXb22ZvKX8hLSfZOfcDyVUihDH+tfBSQ8qp5ZSKdqqQbEu9F6Q/OMdQ
	5Sr7gWebDD/n/ZczYKiFapDYDEkyXphOCM6bIxNB5mnPWbXY4GXGeyYKRjl/KbMB6yFuZ28WcRnpO
	aRYLaC2g209XYxlAJAZnCO02NBN82ATymyfyCbAKgzIX036ZTAIdHc5QmbIgdus6YMIF1YCsmRkYc
	e7zRsGEBuKnI8OJ54Wq9u3WVeNVP89p1NKXLhZ5ZplAcC98NGGxIc3wOlqrWvtm+ttvY+WG2abHyC
	wGeskEU0jrfRGs0lY9AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLC5-000000055EO-41jN;
	Mon, 16 Sep 2024 23:31:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqLC3-000000055DS-0rxE
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 23:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 95B9DA42673;
	Mon, 16 Sep 2024 23:31:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2637C4CEC5;
	Mon, 16 Sep 2024 23:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726529502;
	bh=PfrVg8wkn1O+jJEoQFvKSiJ2KYALwlhbi5sq6BHRJ4o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iYIDiKpfXfa4bwSKsoC0OWstXFjPvZL+TQyBxsS87X3tZDC/RIUZ/yc7jKUUrHyew
	 szkJYldtmaP/bR0iMc+GBgqusHut8vXekKNfhV1JRZVPotDACqgfBiKnOwvnw2Yv7k
	 qvTRKJ5rF6jpmQiMyzRdmQ0Xfxse0BM8FGAE9a9o5HLDAI+SZwe9SV1k3ZV7u4zpSv
	 +9hIuEYmpWnD6V4jv67GFYGx8DeTObwv2doO+rV861hnR58h5QL56i0/jwjbl+Omd8
	 Jo0jaas5mhTDJr0dbjZQjzYyOR+PBORiHj1M0GufJZSeauqDc4XO3y9RdDeaiElEqp
	 9Di8zkzCsSdPg==
Message-ID: <0069dc15-250e-4cac-a641-ab7d7ae5b497@kernel.org>
Date: Tue, 17 Sep 2024 01:31:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100: fix PCIe5 PHY clocks
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Rajendra Nayak <quic_rjendra@quicinc.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240916082307.29393-1-johan+linaro@kernel.org>
 <20240916082307.29393-4-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240916082307.29393-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_163143_347193_CAF281E4 
X-CRM114-Status: UNSURE (   5.08  )
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

On 16.09.2024 10:23 AM, Johan Hovold wrote:
> Add the missing clkref enable and pipediv2 clocks to the PCIe5 PHY.
> 
> Fixes: 62ab23e15508 ("arm64: dts: qcom: x1e80100: add PCIe5 nodes")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
