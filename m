Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7334C3DA7A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Dec 2022 14:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryuP+rcORnBiiV8ukfbtbkogKwcjyaPtYY7KABP1Q9w=; b=T6/N6ki5+tTJWQ
	ULcFhI4+OBjLXSx9COHegG9+4cgWjxTwBDzDzVMCO7QceumJ6RgH+rAi9zMauj50dkVZmTv7lQlDa
	FoO//aAXq/F9rXsBDafr5aTjhUWNlhDPc3g7L41maBXI8TDR3Mix/22SDrfklIb3SRLFZ/v83Iluf
	iJrqmXibLUb19OXTuXV108sjawz9KjUGb2QCyKRgmIn48sj5oZaWquX4A0FIHfRdMDvD/soVctXyq
	eFCcdQKzKhqvGklxe0vg88WyK6n06Mw/uFOFxQ/g9Qqa6DFKR9vhRguiPfFvotTNEJACgFzkvNCMO
	UdAAVNVcjVSMbDBOALZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAXXm-005bkl-SZ; Wed, 28 Dec 2022 14:36:34 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAXXj-005bhE-Pa
	for linux-phy@lists.infradead.org; Wed, 28 Dec 2022 14:36:33 +0000
Received: by mail-wr1-x42e.google.com with SMTP id j17so9742834wrr.7
        for <linux-phy@lists.infradead.org>; Wed, 28 Dec 2022 06:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcDJ8cLQMqdQCgdlu7boodh16/p3tpC1pQ2svfRFC3A=;
        b=IvNoRS6OeLqDUjIqbx1sfziFPIjchIHDmR5ZRGybzQrDZWA3db8SEyytYdHzfyIgPV
         tArCq9XdUhjK9kJqZGLya+LvIlZ11naohLQvLziQoWcRkedMFb54dgAGJa2izFqlC/G8
         0s0yjC48OT1vsWJr8akX1ERobMHTMjwozQjkk4T3DwptvyVqi6ovXvVFqY1T9HlzvGfg
         JuJqTQTTehi76HsS/RDXLKLmDnsIzpeB3yUjlmivqLCMQDJ1Yyg1NyQcKR+uZgLc8aUO
         mgp0KkEZS/MBpMWxWKWLT1HWkw48D1V9av9nSGKH4nCapSrLluq54CmMHHcsoGb5mM85
         4rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wcDJ8cLQMqdQCgdlu7boodh16/p3tpC1pQ2svfRFC3A=;
        b=09+orrXWLsoMP810Off2ps2kX0H1+BEkCcC6wWZIQzgTHv6er3XLMZ7UVIDHClCmUF
         Iia4slRo1XjaITMlyeuDh00hiPJcryHBCkVKRtj6btJgtJ+kGtUP/lEMEU4lapmDJmx/
         qPFkWdZDX4Sg0IdbSZs4XjwyBHRT3CC4/La5tyTUZTEbncqJ9+4JYfQMI0xI81zSOy71
         83JZeMQ/1tcLgEyx55OK2xzKKIDnEzG2Wy3PQ9KgnXo6qA7ixUHvI4INVFhb6MJqcehm
         Kv3d6bqFntRVjqtNGlddzYgMdbDBj+nmfFrHVMeQCBjjvtUkUAbARMIoGGwVSKCiWGio
         4lag==
X-Gm-Message-State: AFqh2koLGLhL7gS6O9Xb2rWRIFDXjEZnaF/NMDCGDHx9i3xeiIkgXUZF
	Gf+0iInSotO/50rXjs/kzpEbNg==
X-Google-Smtp-Source: AMrXdXs/f/cqcVzu+3CGx54m9jP459zFofYksGpECKKnYTfedSdo9W0pKOM1c8Lw4Ke4C5BjkK6Zbw==
X-Received: by 2002:adf:d850:0:b0:273:7882:2c7a with SMTP id k16-20020adfd850000000b0027378822c7amr14770589wrl.62.1672238189044;
        Wed, 28 Dec 2022 06:36:29 -0800 (PST)
Received: from localhost (2a02-8388-6582-fe80-0000-0000-0000-0006.cable.dynamic.v6.surfer.at. [2a02:8388:6582:fe80::6])
        by smtp.gmail.com with ESMTPSA id l3-20020a05600012c300b00236c1f2cecesm17860300wrx.81.2022.12.28.06.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 06:36:28 -0800 (PST)
Mime-Version: 1.0
Date: Wed, 28 Dec 2022 15:36:27 +0100
Message-Id: <CPDIYQ3SSY3E.I0Y0NMIED0WO@otso>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Johan Hovold" <johan@kernel.org>, "Vinod Koul" <vkoul@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
X-Mailer: aerc 0.13.0
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
In-Reply-To: <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_063631_947262_B33404A8 
X-CRM114-Status: GOOD (  20.20  )
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

Hi Johan,

On Wed Dec 28, 2022 at 3:17 PM CET, Johan Hovold wrote:
> Luca, Vinod,
>
> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> > Add the tables and config for the combo phy found on SM6350.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > Changes since v2:
> > * Drop dp_txa/dp_txb changes, not required
> > * Fix dp_dp_phy offset
> > 
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
> >  1 file changed, 126 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 77052c66cf70..6ac0c68269dc 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>
> > @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> >  	"phy",
> >  };
> >  
> > +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> > +	.com		= 0x0000,
> > +	.txa		= 0x1200,
> > +	.rxa		= 0x1400,
> > +	.txb		= 0x1600,
> > +	.rxb		= 0x1800,
> > +	.usb3_serdes	= 0x1000,
> > +	.usb3_pcs_misc	= 0x1a00,
> > +	.usb3_pcs	= 0x1c00,
> > +	.dp_serdes	= 0x1000,
>
> I would have expected this to be 0x2000 as that's what the older
> platforms have been using for the dp serdes table so far. Without access
> to any documentation it's hard to tell whether everyone's just been
> cargo-culting all along or if there's actually something there at offset
> 0x2000.

From what I saw comparing downstream code vs mainline 0x1000 should be
correct.

From https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-4.19/+/refs/heads/kernel/11/fp4/include/dt-bindings/phy/qcom,lagoon-qmp-usb3.h#38

USB3_DP_QSERDES_COM_BIAS_EN_CLKBUFLR_EN (downstream 0x1034) =
  QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN (mainline 0x034)

USB3_DP_QSERDES_COM_CP_CTRL_MODE0 (downstream 0x1060) =
  QSERDES_V3_COM_CP_CTRL_MODE0 (mainline 0x060)

These defines downstream are used in qcom,qmp-phy-init-seq
(lagoon-usb.dtsi) which super abbreviated gets used like this:

lagoon-usb.dtsi:
    reg = <0x88e8000 0x3000>;
    reg-names = "qmp_phy_base";
    qcom,qmp-phy-init-seq = <...>;

drivers/usb/phy/phy-msm-ssusb-qmp.c
    res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
                        "qmp_phy_base");
    phy->base = devm_ioremap_nocache(dev, res->start, resource_size(res));

    of_property_read_u32_array(dev->of_node,
            "qcom,qmp-phy-init-seq",
            phy->qmp_phy_init_seq,
            phy->init_seq_len);

    reg = (struct qmp_reg_val *)phy->qmp_phy_init_seq;

    while (reg->offset != -1) {
        writel_relaxed(reg->val, phy->base + reg->offset);

I don't see anywhere where an extra 0x1000 should come from. But perhaps
I'm missing something. The reg address is the same downstream and
mainline also.

>
> Vinod, could you shed some light on this as presumably you have access
> to some documentation?

That would be useful :)

Regards
Luca

>
> > +	.dp_dp_phy	= 0x2a00,
> > +};
>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
