Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42217C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Dec 2022 10:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHCSRSOG6F5ikjgt1zrf48vHs+NMCwuko8l2+8eWnd8=; b=1BFyRIuKL0WLen
	lPeGMFBxcekqS8fv/23hn/h97HlTswHbhMmwRD7B9M54A8/sCmM16ooH90wd0bcZMcq2RDoXA57Of
	yxNcR7q5dCj8z86J69kyJSvmb8kzztbFWYGDnrsNYs1C2IWzkmcO4mMP15o41kC/jUR9HvBOropmi
	Dq2JqOAwULcGDja0S7zY7m2DwC3u5UJLgzYXnP7MJ7JqSmAlNuMM4FpFrYUF76SY/B/yFi+OIJfNz
	v1LLg+l4I6zUceNmGVJd2VkEVDKQ4ovZ4jcM7p+nDg41ySf/72vAT5OzfGPRrm9q+C2T8YIVAbO71
	vsD8DtZA+pzqv72+QjDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5l3m-008duk-NC; Thu, 15 Dec 2022 10:01:50 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.82])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5l3j-008dqC-DK
	for linux-phy@lists.infradead.org; Thu, 15 Dec 2022 10:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1671098498;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=gSkawMZII/szNuMPzj1SG1TIC63W2ydy3RFSlgeYViA=;
    b=qTEo8CBtxfbB8IWD0USfZACF1KXxdSaHAzwQzAVoRunHu7zDeK1oJ74veDucQpYQoO
    U6Jg8IwUXMADze4RM74Z/gGGY434ymEVJEHVxWK8mBhLwzlJnMYt0ixEczhHnhCHVI8l
    XbEKYI7e4NGx+ZC//pfXBM+GOGEBKf1m3amhdS5IU3JXNxsTjzvSlt+d1CkW2rc9bpiu
    w3IyXA/Aq2dDLQK17ux8gwR6tAIb9gtsV38gwNyE92EZ1BxPKD9nKAKH1hcH2xRPJPb2
    g3rxbXYcoG2Rx4mQqBDQTQh3yjm25DqbB+wm/oq4Ftjbc6sN55KiAKa2qjL7NRpHCEny
    Mbbg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWwfLI"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBFA1bs09
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 15 Dec 2022 11:01:37 +0100 (CET)
Date: Thu, 15 Dec 2022 11:01:36 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Message-ID: <Y5rwgMOCSC2z/Xv9@gerhold.net>
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221214223733.648167-1-marijn.suijten@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_020147_835632_3E3E147B 
X-CRM114-Status: GOOD (  24.77  )
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

On Wed, Dec 14, 2022 at 11:37:32PM +0100, Marijn Suijten wrote:
> This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> 
> This commit introduced an init sequence from downstream DT [1] in the
> driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> this sequence:
> 
>     /*
>      * The macro is used to define an initialization sequence.  Each tuple
>      * is meant to program 'value' into phy register at 'offset' with 'delay'
>      * in us followed.
>      */
> 
> Instead of corresponding to offsets into the phy register, the sequence
> read by the downstream driver [2] is passed into ulpi_write [3] which
> crafts the address-value pair into a new value and writes it into the
> same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> sequence is programmed into the hardware in a totally different way than
> downstream and is unlikely to achieve the desired result, if the hsphy
> is working at all.
> 

Thanks for sending this, I've also been meaning to do this for quite
some time :)

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> An alternative method needs to be found to write these init values at
> the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> and should have its compatible revised to use the generic one, instead
> of a compatible that writes wrong data to the wrong registers.
> 

There is a simple solution to write the init values correctly: You can
just use the ULPI PHY driver for MSM8916 (phy-qcom-usb-hs.c), which
writes those init values correctly.

If you look closely at downstream you can see that all targets with the
"SNPS Femto PHY" (at least MSM8909, MDM9607, MSM8976) actually use a
mixture of the code currently implemented in the mainline ULPI PHY
driver (phy-qcom-usb-hs.c) and the actual Femto PHY driver
(phy-qcom-usb-hs-28nm.c):

 - The device trees contains "qcom,dp-manual-pullup", which enables the
   ULPI_MISC_A_VBUSVLDEXT magic that is currently implemented partly in
   phy-qcom-usb-hs.c and partly in ci_hdrc_msm.c: 
     - Downstream: https://git.codelinaro.org/clo/la/kernel/msm-4.9/-/blob/29f81c613f4c853f4125ef189ede1f6d610653c0/drivers/usb/gadget/ci13xxx_msm.c#L113
     - Mainline: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/qualcomm/phy-qcom-usb-hs.c?h=v6.1#n92
       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/chipidea/ci_hdrc_msm.c?h=v6.1#n117

  - The ULPI init sequence is also implemented by phy-qcom-usb-hs.c in
    mainline: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/qualcomm/phy-qcom-usb-hs.c?h=v6.1#n144

  - The PHY CSR registers implemented by phy-qcom-usb-hs-28nm.c are only
    used to enter retention mode downstream (I guess some low-power mode
    where an USB device/host could still wake up the other host/device).

We don't have support for proper support for retention on mainline
(phy-qcom-usb-hs-28nm.c never enables the retention mode without
 fully powering off the PHY immediately after using the regulators).

So I suggest that we simply use the ULPI PHY driver for MSM8916 at least
for MSM8909 and MDM9607 (haven't checked MSM8976 in detail). I have
tried it and it works without any problems on both MSM8909 and MDM9607.
No driver changes needed!

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
