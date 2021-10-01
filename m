Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2104AC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:16:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3D10615A4
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:16:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E3D10615A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvWBGg06rYfcpS//5YHohEQ/SwbMBJIBwzil134OU/k=; b=CPL4ntMdi8r5hH
	6HIJqn0cDXjlbKlQlc4T5JRV17fV3IWpP0qFDEI253wgbrsiFg2zBiRuqYncL8kMgHi7lUuzf1UAw
	6km5Xu1VLxW9bxH5aHeRAK1bLcxVLStbAwBN3cd0zBYxEWtI+hS1V0lC2/j8uELOGBOwe66NuO32m
	cFNzC8o8GEwhYDzRDJyKSY/AgoL/SqIRo0bVNi5/mk4mFOSLT/JSvtSSVwqFyv2OXgz9xFKDmFeSU
	tChljHGdPEjoIyrQz7hl7krZ5fjFPSLNNSzMaZppu1YTtMsLbOKL1Gocu1F+6QS4sJW4c66tiHVm3
	3d60CUrEmCG+4z5Qi5Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDiZ-00H1hg-CD; Fri, 01 Oct 2021 08:16:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDiW-00H1fy-Iv
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:16:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41CB7615A4;
 Fri,  1 Oct 2021 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633076188;
 bh=0WyIYGVy95a4Hf9zq1uMRFezhbR9FuA0Atxqav/Yddg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=em7oJ774XXNZKeM4ZYSHcAyi1rpWJYjh+u+tMJuJVEt4KCscEPHlmRdxHekUAREhp
 puOEEzRorZMgmde5IAD0bGX+0fsBAPi06Iwf/7BUqG6nzpjylVSG0w88xSL/1OppOV
 VB/ZzdVUvSKbRCVBVyTHldYLWU8v1l/zOac4TuaeZIyjrPUjk4mCWpuHm7vhnaoC0c
 8VREGvd47L3+++U6uCnGsgDHUkTzfCTL6qWMl7qj5ljJ1/AngHygzC8buRQ//xu5IS
 sOEpdg0SJut6zRd2Dkf64sVDcDxxf2ZQru5eDbL9SkPl+YWh98v/xeikrX5bCNCYZl
 NoEnl/QBUX78w==
Date: Fri, 1 Oct 2021 13:46:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Add missing vdd-supply for QUSB2 PHY
Message-ID: <YVbD12kTfbGmRYId@matsya>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928022002.26286-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_011628_677282_DC0E08F7 
X-CRM114-Status: GOOD (  15.28  )
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

Hi Shawn,

On 28-09-21, 10:19, Shawn Guo wrote:
> The series adds missing vdd-supply for QUSB2 PHY which is required for
> digital circuit.  The driver works right now likely because firmware
> already sets it up.  Add it to bindings, driver and DTS that miss the
> supply.
> 
> It should not cause problem for existing DTBs:
> - SC7180, SDM630, SDM845 based platforms already specified vdd-supply
>   in the DTBs.
> - MSM8996 and MSM8998 platform DTBs miss vdd-supply, but dummy regulator
>   will ensure QUSB2 PHY driver works as before on these platforms.

What about the rest.. I checked SM8350 and SM8250 mtp ones are missing
this. With the property made mandatory, I guess it would cause these to
fail right..

> 
> Changes for v2:
> - Correct copy & paste error on vdd-supply name in bindings doc.
> 
> 
> Shawn Guo (3):
>   dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
>   phy: qcom-qusb2: Add missing vdd supply
>   arm64: dts: qcom: Add missing vdd-supply for QUSB2 PHY
> 
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
>  arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi              | 2 ++
>  arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone.dtsi    | 1 +
>  arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi           | 1 +
>  arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi      | 1 +
>  drivers/phy/qualcomm/phy-qcom-qusb2.c                     | 2 +-
>  6 files changed, 12 insertions(+), 1 deletion(-)
> 
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
