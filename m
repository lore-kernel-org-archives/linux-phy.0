Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74424C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 17:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjUrWt0CVJLqXmcTrlKKaumPLQGof9g+kfUn1l1cNso=; b=FA/ols8zcBFy1A
	IEQoCS0WO2/fXWhH7+SbawPSIERc4fmldUc0LewzB4skDb3AQI+3ppVV7OkqV1B2qKHwF/SsjNXjk
	vYV0HNPj/oE7/VPViH0Y7gYWYm+a1/Gl1lL1ljg/zjGDVeIBSnybI6jj2F68oieHoX8Bp3W9FJ9/A
	+Ro4Mpveo0ImpCFJ6MWQnwAI2WS4qJx2UnqfpO++Tp1glsI4fiovPm7q6yssUywFWGuBv3/R1SU7h
	Wen1N7PW9q6DSKyWK5IJWyvFRNj23/aos7tPPqq5Yi9VdXzP9O+5a4LVirCAq740ZaNcGU6BLrbuP
	otJ0L27L0oNt/szq9gZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odx9Z-004Vxx-MN; Thu, 29 Sep 2022 17:16:53 +0000
Received: from guitar.tkos.co.il ([84.110.109.230] helo=mail.tkos.co.il)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odwoy-004MO9-6P
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 16:55:39 +0000
Received: from tarshish (unknown [10.0.8.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.tkos.co.il (Postfix) with ESMTPS id C904E4405B7;
	Thu, 29 Sep 2022 19:53:44 +0300 (IDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
	s=default; t=1664470424;
	bh=436Uuabr1UgFs+4h2U77K7F0dRJkSRY+sV5JdWmbtNc=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:From;
	b=a0XUExdFQx8ak4Y7R9AuZ+LSR3fwyPj/6BUKxRiLCGYVAeLL0Bg+vvMnwBYCfBe/W
	 3nCZW2iqpVoGOKJRbd6ReByhVwZ3jBHRmr6K5nXbnBAFfrkMBVfkHBty3LkZnNHDwc
	 Ic37DWHYVaOjKtvM4NAd0jfl2771VM0JvVNKr5UOTl2NN0J0kFV3vQuPJfENEjZcqk
	 NQDIKEMs9Htwc1mf+zZ9flLasqgs78ADWwmATwf7dimrOBx0/noI2KXuwdzXOwRJig
	 i0rGBSB5AcbRYLSqmUmeyRKU1pNAO0hkh375+zV2nZKaFba8QDmLXZM/bPa3dYs+eY
	 HfPzS9dNJGYRw==
References: <75bb4a68-f47d-1de1-a900-789e365be41e@linaro.org>
User-agent: mu4e 1.8.7; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Robert Marko <robimarko@gmail.com>, linux-arm-msm
 <linux-arm-msm@vger.kernel.org>, "open list:GENERIC PHY FRAMEWORK"
 <linux-phy@lists.infradead.org>, Johan Hovold <johan+linaro@kernel.org>
Subject: Re: ipq8074 USB PHY
Date: Thu, 29 Sep 2022 19:52:14 +0300
In-reply-to: <75bb4a68-f47d-1de1-a900-789e365be41e@linaro.org>
Message-ID: <87k05mm875.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_095536_791669_DAB9C54E 
X-CRM114-Status: GOOD (  11.07  )
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

Hi Dmitry,

On Thu, Sep 29 2022, Dmitry Baryshkov wrote:
> We have been looking onto the QMP PHY programming in the upstream kernels. I
> noticed that the ipq8074_usb3phy_cfg uses usb3phy_regs_layout for the regs
> layout, however the Qualcomm's kernel ([1]) defines offsets which correspond
> to qmp_v3_usb3phy_regs_layout. As you seem to be working with this platform,
> could you please doublecheck which of layouts is correct? Thank you.
>
> [1]
> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=NHSS.QSDK.9.0.2&id=894e56082ca89638c68b7cee039ac1b2a6cb4863#n1237

The platform I have access to is IPQ6018 based. Only USB2 signals are
connected on the board. I can't help with testing of USB3 PHY
initialization.  Sorry.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
