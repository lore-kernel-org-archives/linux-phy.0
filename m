Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF79ACD5BB1
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 15:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=By1xvs9mqEZWnvlBmPjyDdTz7uZQnvoMuI+BMmaRVbI=; b=aKj+eRfrLzCXhg
	2if4+3w/7wO9IYVyDJM/Wsl5dGVGH9nlJeMV+RP6UGjL6TYPX2TNBWfOSZVUY0R0/T5xA7cmOy6A3
	SlDnN/jQue7Csxyv0Y2qAbrWcCRDkU12/l+tA7HbjpeJBhp+x6PpSkVRajyQOVdWSVsLW30JrAnPr
	18ROxPZHUktxhsQAKL3Xun5gVy3l0Q+MYIhYyvJ+7dYf6V7MUMNgBVmn4YZ8WUPNfoErtuiAo0IA+
	Q4UsMQpYMqaukvyHCXxXefbaFf18n63SlxJKmHdSibbRT6P9uaF4TykEw1a7nuOCV304ZicQtT/0U
	3Qvt6PvBIl/hkg8PtT4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRtyM-00000002Q7t-1lNF;
	Tue, 26 May 2026 15:45:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRtyK-00000002Q7T-2SUh
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 15:45:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0DB55600AB;
	Tue, 26 May 2026 15:45:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 272791F00A3A;
	Tue, 26 May 2026 15:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779810335;
	bh=o6ZOpdcooECKlYdGEkMt3TkcMoyrYav5PVhJftWJ3r8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kUyO5zVKJg4RoIQE/Un1jPwQOBn3NgWQV6InHga/aSjomsJ/4feSlar1gJerZmJLK
	 MvjNM5zyujbC4OsbPN+iX5s0/6cHlPsHyAVyCU6pOsQxAfMrXus4j1F7I91Id6/Xl7
	 zrCWzP5Ywv+xjdhXo5YJGAbemISU68AD+xPUEjub8sRFm+sPXVtaJpgXCuI5R1UIX/
	 FAzz/2P7t9gtbN9rq/sdT49YUTat80406MoZU4XxMTTFv6DqzD9W023hj1i1hcXI1U
	 jQrTSV39GmA3iwKeoNy65i7q4vo/UXtgTuvxAR3T/4YwuN1ZpHby7/toXZ9nIgCP1R
	 U0nQbeVicP4CA==
Date: Tue, 26 May 2026 17:45:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
Message-ID: <20260526-quantum-funny-gorilla-cfc983@quoll>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
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

On Fri, May 22, 2026 at 11:32:24PM +0530, Komal Bajaj wrote:
> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
> passives, and is designed to be mounted on carrier boards.
> 
> Three eSoM variant are introduced:
>   - CQM: retail variant with integrated modem
>   - CQS: retail variant without modem
>   - IQS: industrial-grade variant without modem

Industrial/consumer variants differ often only with thermal, so how is
it here? Thermal difference does not make them incompatible. Honestly,
usually industrial one does not even receive dedicated compatibles.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
