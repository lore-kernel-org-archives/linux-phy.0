Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86729C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rizxzRbY6a77OvNvLG1A7XrEqNzJ6Q6rtGXfMVXGt3Y=; b=FzJpnZKHilw3ze
	VZN9Kk8gc+ahAu44tcLRzQVn2+5MQIRqM27qv+eVqYwapI1vq1+2LcMoYREzgWSQONveBY8Ne+ela
	MrTNGRiEbGD+Pf1VsPWNlJJMj4HqPBjLgVpFDC3iLLgoy/9HtoVjpQmnmFzzBz6veU36MJwKae02H
	tw+aPzIn/BWE8arVOFoesh9eiQn+TlqQXYige3fZzsShuzi8sRnftTAOnufn7u1BYNWNzghP/lMpk
	zMQ0hKIEP4wPiWKJ6/Sb9m+b0W8sW+vI3ZJrNaOOyW+6Jd1nct9GmjCPAhPjYwy0WBfdZUj7X0Q5r
	ssrecY7mtgWQpIW6mabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOew5-005EfC-0f;
	Sat, 13 Jan 2024 14:24:33 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOew0-005Eeb-2Q
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 14:24:31 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5f2d4aaa2fdso77275617b3.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 06:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155864; x=1705760664; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DgYkzfQgIX6QNhspGrfWXOlEPr0m0oBq536dOMQ5pXI=;
        b=QDztiEHLW+LPFf69lYwrUSeYDXI/NF5Z7pGWTRAOWsEu7c9STKkfRjXZHbYkokUiTb
         K1UhTqeZEoZ+jgurTVXRvZ/rDz42ZAE43lFnNSYHu5iNBJJIne4HqsqhnNBGf0zyLYOi
         fLYRy5mKPPv7ASHQnrdBtXrVfhVqtayXhj8DoPHpLJ39TSVZFLgTkFTUQ35cbSmGVpIs
         Olp8JhUogQr9CNHXhWQaWysvRicQiaQRc5FNcuqkqCS4yKAwzwpgITkQM5C5lQdiIiWj
         YizwSAqhvtic0UNlQ8FSLtaKY6YKcqC0HlJtEywkwk0u9Ybzhw8Ze6Uh5T0Xe+140ZqZ
         7yTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155864; x=1705760664;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DgYkzfQgIX6QNhspGrfWXOlEPr0m0oBq536dOMQ5pXI=;
        b=BQkkTB08TvZIMf1MUnX2TQ52izP3gVfTK2hnl+UmvhywwEjzHW6E7kxRpVxGUBWW9v
         5DJpmNymgn4Ny+G7pBFjTpc2aVuTX7QF3G2QzRUYLolhCJ4oXA9NjVuEzjrrLGFRgTlC
         hbTZXssRiEX1C8AZtPNjsyH6ssvP5qMGAL/FoFvNmPHMQ6cqig/qqyrXoP1nzFiiaY8q
         mMmpkpLGQcii02m9xGhpgTke0tX+VyahUFTuENqn30c2u1I+zBlNzQwVTaoQpvNTlXxI
         SRcRWx+Ek3WD6krjFA9E4TqLUPpRlvwUhGd0Mxn/NqOuOY2276WKB5qH67dLk9nN7hOH
         OrBA==
X-Gm-Message-State: AOJu0YwUHgEppZ84nOsdRuBB+nuOI0b2rKJhfvAc7Q/ltKnoF4X6cF/g
	GjdOmDYPa3vfDDRRtBDsG6rPVSkbKW1p0Eeuqah4+fC7EGLryg==
X-Google-Smtp-Source: AGHT+IHjXVx87ybteaQ3wau7tGvmmVg3iGICXmos2XcI0uXRahKM9xhcRCAbwZFmWn6Q5DI+L+utR+osNYDRyrT9MoE=
X-Received: by 2002:a81:af1a:0:b0:5e1:bd09:9cfd with SMTP id
 n26-20020a81af1a000000b005e1bd099cfdmr2683382ywh.23.1705155864034; Sat, 13
 Jan 2024 06:24:24 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-5-de7dfd459353@linaro.org> <2594d4cd-706e-4f01-abde-edba9d5fb8ad@linaro.org>
In-Reply-To: <2594d4cd-706e-4f01-abde-edba9d5fb8ad@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:24:12 +0200
Message-ID: <CAA8EJpq0Kg7pqJhEtccFE4e9JsOw4huG=rx8ReKu5fzAteagLQ@mail.gmail.com>
Subject: Re: [PATCH 05/13] usb: typec: qcom-pmic-typec: allow different
 implementations for the PD PHY
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_062428_840903_994E67A4 
X-CRM114-Status: GOOD (  33.18  )
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

On Sat, 13 Jan 2024 at 15:43, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 13/01/2024 05:42, Dmitry Baryshkov wrote:
> > Rework Qualcomm PMIC TCPM driver to allow different platform-specific
> > implementations of the PD PHY interface. While majority of platforms
> > has the same of register for the PD PHY, some obscure ones (PMI632) do
> > not have real PD PHY support. Add proper interface between the main
> > module and the PD PHY backend to allow switching the PD PHY
> > implementation.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 100 ++-----------
> >   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h      |  25 ++++
> >   .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    | 155 ++++++++++++++++++---
> >   .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  90 +-----------
> >   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h |   4 +-
> >   5 files changed, 178 insertions(+), 196 deletions(-)
> >
> > diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> > index 1a2b4bddaa97..4f2dbf20da12 100644
> > --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> > +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> > @@ -20,26 +20,15 @@
> >
> >   #include <drm/bridge/aux-bridge.h>
> >
> > +#include "qcom_pmic_typec.h"
> >   #include "qcom_pmic_typec_pdphy.h"
> >   #include "qcom_pmic_typec_port.h"
> >
> >   struct pmic_typec_resources {
> > -     struct pmic_typec_pdphy_resources       *pdphy_res;
> > +     const struct pmic_typec_pdphy_resources *pdphy_res;
>
> If you are making one resource struct const then make both const.

Let's maybe implement a similar patch for the port implementation.
Maybe this will help with Type-C support on sdm845 / sdm660 platforms,
which have the same PDPHY but different TYPEC block.

>
> >       struct pmic_typec_port_resources        *port_res;
> >   };
> >
> > -struct pmic_typec {
> > -     struct device           *dev;
> > -     struct tcpm_port        *tcpm_port;
> > -     struct tcpc_dev         tcpc;
> > -     struct pmic_typec_pdphy *pmic_typec_pdphy;
> > -     struct pmic_typec_port  *pmic_typec_port;
> > -     bool                    vbus_enabled;
> > -     struct mutex            lock;           /* VBUS state serialization */
> > -};
> > -
> > -#define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
> > -
> >   static int qcom_pmic_typec_get_vbus(struct tcpc_dev *tcpc)
> >   {
> >       struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > @@ -116,34 +105,6 @@ static int qcom_pmic_typec_start_toggling(struct tcpc_dev *tcpc,
> >                                                  port_type, cc);
> >   }
> >
> > -static int qcom_pmic_typec_set_roles(struct tcpc_dev *tcpc, bool attached,
> > -                                  enum typec_role power_role,
> > -                                  enum typec_data_role data_role)
> > -{
> > -     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > -
> > -     return qcom_pmic_typec_pdphy_set_roles(tcpm->pmic_typec_pdphy,
> > -                                            data_role, power_role);
> > -}
> > -
> > -static int qcom_pmic_typec_set_pd_rx(struct tcpc_dev *tcpc, bool on)
> > -{
> > -     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > -
> > -     return qcom_pmic_typec_pdphy_set_pd_rx(tcpm->pmic_typec_pdphy, on);
> > -}
> > -
> > -static int qcom_pmic_typec_pd_transmit(struct tcpc_dev *tcpc,
> > -                                    enum tcpm_transmit_type type,
> > -                                    const struct pd_message *msg,
> > -                                    unsigned int negotiated_rev)
> > -{
> > -     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > -
> > -     return qcom_pmic_typec_pdphy_pd_transmit(tcpm->pmic_typec_pdphy, type,
> > -                                              msg, negotiated_rev);
> > -}
> > -
> >   static int qcom_pmic_typec_init(struct tcpc_dev *tcpc)
> >   {
> >       return 0;
> > @@ -177,9 +138,6 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
> >       tcpm->tcpc.set_polarity = qcom_pmic_typec_set_polarity;
> >       tcpm->tcpc.set_vconn = qcom_pmic_typec_set_vconn;
> >       tcpm->tcpc.start_toggling = qcom_pmic_typec_start_toggling;
> > -     tcpm->tcpc.set_pd_rx = qcom_pmic_typec_set_pd_rx;
> > -     tcpm->tcpc.set_roles = qcom_pmic_typec_set_roles;
> > -     tcpm->tcpc.pd_transmit = qcom_pmic_typec_pd_transmit;
> >
> >       regmap = dev_get_regmap(dev->parent, NULL);
> >       if (!regmap) {
> > @@ -195,17 +153,13 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
> >       if (IS_ERR(tcpm->pmic_typec_port))
> >               return PTR_ERR(tcpm->pmic_typec_port);
> >
> > -     tcpm->pmic_typec_pdphy = qcom_pmic_typec_pdphy_alloc(dev);
> > -     if (IS_ERR(tcpm->pmic_typec_pdphy))
> > -             return PTR_ERR(tcpm->pmic_typec_pdphy);
> > -
> >       ret = qcom_pmic_typec_port_probe(pdev, tcpm->pmic_typec_port,
> >                                        res->port_res, regmap, base[0]);
> >       if (ret)
> >               return ret;
> >
> > -     ret = qcom_pmic_typec_pdphy_probe(pdev, tcpm->pmic_typec_pdphy,
> > -                                       res->pdphy_res, regmap, base[1]);
> > +     ret = res->pdphy_probe(pdev, tcpm,
> > +                            res->pdphy_res, regmap, base[1]);
> >       if (ret)
> >               return ret;
> >
> > @@ -231,10 +185,11 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
> >       if (ret)
> >               goto fwnode_remove;
> >
> > -     ret = qcom_pmic_typec_pdphy_start(tcpm->pmic_typec_pdphy,
> > -                                       tcpm->tcpm_port);
> > -     if (ret)
> > -             goto fwnode_remove;
> > +     if (tcpm->pdphy_start) {
> > +             ret = tcpm->pdphy_start(tcpm, tcpm->tcpm_port);
> > +             if (ret)
> > +                     goto fwnode_remove;
> > +     }
>
> Its a bit of a minor nit but, instead of checking for tcpm->pdphy_start
> and tcpm->ppdphy_stop you could also populate the callbacks to return
> zero from stubs you add and make this code look just a bit neater.
>
> I'd say that optional though but, for preference unless there's a good
> technical argument against it.

I don't like empty callbacks for the sake of the callback itself. But
this will follow the TCPM ideology.

>
> >
> >       return 0;
> >
> > @@ -248,46 +203,13 @@ static void qcom_pmic_typec_remove(struct platform_device *pdev)
> >   {
> >       struct pmic_typec *tcpm = platform_get_drvdata(pdev);
> >
> > -     qcom_pmic_typec_pdphy_stop(tcpm->pmic_typec_pdphy);
> > +     if (tcpm->pdphy_stop)
> > +             tcpm->pdphy_stop(tcpm);
> >       qcom_pmic_typec_port_stop(tcpm->pmic_typec_port);
> >       tcpm_unregister_port(tcpm->tcpm_port);
> >       fwnode_remove_software_node(tcpm->tcpc.fwnode);
> >   }
> >
> > -static struct pmic_typec_pdphy_resources pm8150b_pdphy_res = {
> > -     .irq_params = {
> > -             {
> > -                     .virq = PMIC_PDPHY_SIG_TX_IRQ,
> > -                     .irq_name = "sig-tx",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_SIG_RX_IRQ,
> > -                     .irq_name = "sig-rx",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_MSG_TX_IRQ,
> > -                     .irq_name = "msg-tx",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_MSG_RX_IRQ,
> > -                     .irq_name = "msg-rx",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_MSG_TX_FAIL_IRQ,
> > -                     .irq_name = "msg-tx-failed",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_MSG_TX_DISCARD_IRQ,
> > -                     .irq_name = "msg-tx-discarded",
> > -             },
> > -             {
> > -                     .virq = PMIC_PDPHY_MSG_RX_DISCARD_IRQ,
> > -                     .irq_name = "msg-rx-discarded",
> > -             },
> > -     },
> > -     .nr_irqs = 7,
> > -};
> > -
> >   static struct pmic_typec_port_resources pm8150b_port_res = {
> >       .irq_params = {
> >               {
> > diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h
> > new file mode 100644
> > index 000000000000..da035916c12a
> > --- /dev/null
> > +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2023, Linaro Ltd. All rights reserved.
> > + */
> > +
> > +#ifndef __QCOM_PMIC_TYPEC_H__
> > +#define __QCOM_PMIC_TYPEC_H__
> > +
> > +struct pmic_typec {
> > +     struct device           *dev;
> > +     struct tcpm_port        *tcpm_port;
> > +     struct tcpc_dev         tcpc;
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy;
> > +     struct pmic_typec_port  *pmic_typec_port;
> > +     bool                    vbus_enabled;
> > +     struct mutex            lock;           /* VBUS state serialization */
> > +
> > +     int (*pdphy_start)(struct pmic_typec *tcpm,
> > +                        struct tcpm_port *tcpm_port);
> > +     void (*pdphy_stop)(struct pmic_typec *tcpm);
> > +};
> > +
> > +#define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
> > +
> > +#endif
> > diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> > index 52c81378e36e..40511ce86a34 100644
> > --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> > +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
> > @@ -14,8 +14,74 @@
> >   #include <linux/slab.h>
> >   #include <linux/usb/pd.h>
> >   #include <linux/usb/tcpm.h>
> > +#include "qcom_pmic_typec.h"
> >   #include "qcom_pmic_typec_pdphy.h"
> >
> > +/* PD PHY register offsets and bit fields */
> > +#define USB_PDPHY_MSG_CONFIG_REG     0x40
> > +#define MSG_CONFIG_PORT_DATA_ROLE    BIT(3)
> > +#define MSG_CONFIG_PORT_POWER_ROLE   BIT(2)
> > +#define MSG_CONFIG_SPEC_REV_MASK     (BIT(1) | BIT(0))
> > +
> > +#define USB_PDPHY_EN_CONTROL_REG     0x46
> > +#define CONTROL_ENABLE                       BIT(0)
> > +
> > +#define USB_PDPHY_RX_STATUS_REG              0x4A
> > +#define RX_FRAME_TYPE                        (BIT(0) | BIT(1) | BIT(2))
> > +
> > +#define USB_PDPHY_FRAME_FILTER_REG   0x4C
> > +#define FRAME_FILTER_EN_HARD_RESET   BIT(5)
> > +#define FRAME_FILTER_EN_SOP          BIT(0)
> > +
> > +#define USB_PDPHY_TX_SIZE_REG                0x42
> > +#define TX_SIZE_MASK                 0xF
> > +
> > +#define USB_PDPHY_TX_CONTROL_REG     0x44
> > +#define TX_CONTROL_RETRY_COUNT(n)    (((n) & 0x3) << 5)
> > +#define TX_CONTROL_FRAME_TYPE(n)        (((n) & 0x7) << 2)
> > +#define TX_CONTROL_FRAME_TYPE_CABLE_RESET    (0x1 << 2)
> > +#define TX_CONTROL_SEND_SIGNAL               BIT(1)
> > +#define TX_CONTROL_SEND_MSG          BIT(0)
> > +
> > +#define USB_PDPHY_RX_SIZE_REG                0x48
> > +
> > +#define USB_PDPHY_RX_ACKNOWLEDGE_REG 0x4B
> > +#define RX_BUFFER_TOKEN                      BIT(0)
> > +
> > +#define USB_PDPHY_BIST_MODE_REG              0x4E
> > +#define BIST_MODE_MASK                       0xF
> > +#define BIST_ENABLE                  BIT(7)
> > +#define PD_MSG_BIST                  0x3
> > +#define PD_BIST_TEST_DATA_MODE               0x8
> > +
> > +#define USB_PDPHY_TX_BUFFER_HDR_REG  0x60
> > +#define USB_PDPHY_TX_BUFFER_DATA_REG 0x62
> > +
> > +#define USB_PDPHY_RX_BUFFER_REG              0x80
> > +
> > +/* VDD regulator */
> > +#define VDD_PDPHY_VOL_MIN            2800000 /* uV */
> > +#define VDD_PDPHY_VOL_MAX            3300000 /* uV */
> > +#define VDD_PDPHY_HPM_LOAD           3000    /* uA */
> > +
> > +/* Message Spec Rev field */
> > +#define PD_MSG_HDR_REV(hdr)          (((hdr) >> 6) & 3)
> > +
> > +/* timers */
> > +#define RECEIVER_RESPONSE_TIME               15      /* tReceiverResponse */
> > +#define HARD_RESET_COMPLETE_TIME     5       /* tHardResetComplete */
> > +
> > +/* Interrupt numbers */
> > +#define PMIC_PDPHY_SIG_TX_IRQ                0x0
> > +#define PMIC_PDPHY_SIG_RX_IRQ                0x1
> > +#define PMIC_PDPHY_MSG_TX_IRQ                0x2
> > +#define PMIC_PDPHY_MSG_RX_IRQ                0x3
> > +#define PMIC_PDPHY_MSG_TX_FAIL_IRQ   0x4
> > +#define PMIC_PDPHY_MSG_TX_DISCARD_IRQ        0x5
> > +#define PMIC_PDPHY_MSG_RX_DISCARD_IRQ        0x6
> > +#define PMIC_PDPHY_FR_SWAP_IRQ               0x7
> > +
> > +
> >   struct pmic_typec_pdphy_irq_data {
> >       int                             virq;
> >       int                             irq;
> > @@ -231,11 +297,13 @@ qcom_pmic_typec_pdphy_pd_transmit_payload(struct pmic_typec_pdphy *pmic_typec_pd
> >       return ret;
> >   }
> >
> > -int qcom_pmic_typec_pdphy_pd_transmit(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                                   enum tcpm_transmit_type type,
> > -                                   const struct pd_message *msg,
> > -                                   unsigned int negotiated_rev)
> > +static int qcom_pmic_typec_pdphy_pd_transmit(struct tcpc_dev *tcpc,
> > +                                          enum tcpm_transmit_type type,
> > +                                          const struct pd_message *msg,
> > +                                          unsigned int negotiated_rev)
> >   {
> > +     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
> >       struct device *dev = pmic_typec_pdphy->dev;
> >       int ret;
> >
> > @@ -336,8 +404,10 @@ static irqreturn_t qcom_pmic_typec_pdphy_isr(int irq, void *dev_id)
> >       return IRQ_HANDLED;
> >   }
> >
> > -int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on)
> > +static int qcom_pmic_typec_pdphy_set_pd_rx(struct tcpc_dev *tcpc, bool on)
> >   {
> > +     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
> >       unsigned long flags;
> >       int ret;
> >
> > @@ -353,9 +423,12 @@ int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, b
> >       return ret;
> >   }
> >
> > -int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                                 bool data_role_host, bool power_role_src)
> > +static int qcom_pmic_typec_pdphy_set_roles(struct tcpc_dev *tcpc, bool attached,
> > +                                        enum typec_role power_role,
> > +                                        enum typec_data_role data_role)
> >   {
> > +     struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
> >       struct device *dev = pmic_typec_pdphy->dev;
> >       unsigned long flags;
> >       int ret;
> > @@ -366,12 +439,13 @@ int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
> >                                pmic_typec_pdphy->base + USB_PDPHY_MSG_CONFIG_REG,
> >                                MSG_CONFIG_PORT_DATA_ROLE |
> >                                MSG_CONFIG_PORT_POWER_ROLE,
> > -                              data_role_host << 3 | power_role_src << 2);
> > +                              (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
> > +                              (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));
> >
> >       spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
> >
> >       dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
> > -             data_role_host, power_role_src);
> > +             data_role, power_role);
> >
> >       return ret;
> >   }
> > @@ -435,9 +509,10 @@ static int pmic_typec_pdphy_reset(struct pmic_typec_pdphy *pmic_typec_pdphy)
> >       return ret;
> >   }
> >
> > -int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                             struct tcpm_port *tcpm_port)
> > +static int qcom_pmic_typec_pdphy_start(struct pmic_typec *tcpm,
> > +                                    struct tcpm_port *tcpm_port)
> >   {
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
> >       int i;
> >       int ret;
> >
> > @@ -457,8 +532,9 @@ int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
> >       return 0;
> >   }
> >
> > -void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy)
> > +static void qcom_pmic_typec_pdphy_stop(struct pmic_typec *tcpm)
> >   {
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
> >       int i;
> >
> >       for (i = 0; i < pmic_typec_pdphy->nr_irqs; i++)
> > @@ -469,21 +545,55 @@ void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy)
> >       regulator_disable(pmic_typec_pdphy->vdd_pdphy);
> >   }
> >
> > -struct pmic_typec_pdphy *qcom_pmic_typec_pdphy_alloc(struct device *dev)
> > -{
> > -     return devm_kzalloc(dev, sizeof(struct pmic_typec_pdphy), GFP_KERNEL);
> > -}
> > +const struct pmic_typec_pdphy_resources pm8150b_pdphy_res = {
> > +     .irq_params = {
> > +             {
> > +                     .virq = PMIC_PDPHY_SIG_TX_IRQ,
> > +                     .irq_name = "sig-tx",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_SIG_RX_IRQ,
> > +                     .irq_name = "sig-rx",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_MSG_TX_IRQ,
> > +                     .irq_name = "msg-tx",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_MSG_RX_IRQ,
> > +                     .irq_name = "msg-rx",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_MSG_TX_FAIL_IRQ,
> > +                     .irq_name = "msg-tx-failed",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_MSG_TX_DISCARD_IRQ,
> > +                     .irq_name = "msg-tx-discarded",
> > +             },
> > +             {
> > +                     .virq = PMIC_PDPHY_MSG_RX_DISCARD_IRQ,
> > +                     .irq_name = "msg-rx-discarded",
> > +             },
> > +     },
> > +     .nr_irqs = 7,
> > +};
> >
> >   int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
> > -                             struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                             struct pmic_typec_pdphy_resources *res,
> > +                             struct pmic_typec *tcpm,
> > +                             const struct pmic_typec_pdphy_resources *res,
> >                               struct regmap *regmap,
> >                               u32 base)
> >   {
> > +     struct pmic_typec_pdphy *pmic_typec_pdphy;
> >       struct device *dev = &pdev->dev;
> >       struct pmic_typec_pdphy_irq_data *irq_data;
> >       int i, ret, irq;
> >
> > +     pmic_typec_pdphy = devm_kzalloc(dev, sizeof(struct pmic_typec_pdphy), GFP_KERNEL);
> > +     if (!pmic_typec_pdphy)
> > +             return -ENOMEM;
> > +
> >       if (!res->nr_irqs || res->nr_irqs > PMIC_PDPHY_MAX_IRQS)
> >               return -EINVAL;
> >
> > @@ -522,5 +632,14 @@ int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
> >                       return ret;
> >       }
> >
> > +     tcpm->pmic_typec_pdphy = pmic_typec_pdphy;
> > +
> > +     tcpm->tcpc.set_pd_rx = qcom_pmic_typec_pdphy_set_pd_rx;
> > +     tcpm->tcpc.set_roles = qcom_pmic_typec_pdphy_set_roles;
> > +     tcpm->tcpc.pd_transmit = qcom_pmic_typec_pdphy_pd_transmit;
> > +
> > +     tcpm->pdphy_start = qcom_pmic_typec_pdphy_start;
> > +     tcpm->pdphy_stop = qcom_pmic_typec_pdphy_stop;
> > +
> >       return 0;
> >   }
> > diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> > index e67954e31b14..b94eccadb042 100644
> > --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> > +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> > @@ -8,74 +8,6 @@
> >
> >   #include <linux/platform_device.h>
> >   #include <linux/regmap.h>
> > -#include <linux/usb/tcpm.h>
> > -
> > -#define USB_PDPHY_MAX_DATA_OBJ_LEN   28
> > -#define USB_PDPHY_MSG_HDR_LEN                2
> > -
> > -/* PD PHY register offsets and bit fields */
> > -#define USB_PDPHY_MSG_CONFIG_REG     0x40
> > -#define MSG_CONFIG_PORT_DATA_ROLE    BIT(3)
> > -#define MSG_CONFIG_PORT_POWER_ROLE   BIT(2)
> > -#define MSG_CONFIG_SPEC_REV_MASK     (BIT(1) | BIT(0))
> > -
> > -#define USB_PDPHY_EN_CONTROL_REG     0x46
> > -#define CONTROL_ENABLE                       BIT(0)
> > -
> > -#define USB_PDPHY_RX_STATUS_REG              0x4A
> > -#define RX_FRAME_TYPE                        (BIT(0) | BIT(1) | BIT(2))
> > -
> > -#define USB_PDPHY_FRAME_FILTER_REG   0x4C
> > -#define FRAME_FILTER_EN_HARD_RESET   BIT(5)
> > -#define FRAME_FILTER_EN_SOP          BIT(0)
> > -
> > -#define USB_PDPHY_TX_SIZE_REG                0x42
> > -#define TX_SIZE_MASK                 0xF
> > -
> > -#define USB_PDPHY_TX_CONTROL_REG     0x44
> > -#define TX_CONTROL_RETRY_COUNT(n)    (((n) & 0x3) << 5)
> > -#define TX_CONTROL_FRAME_TYPE(n)        (((n) & 0x7) << 2)
> > -#define TX_CONTROL_FRAME_TYPE_CABLE_RESET    (0x1 << 2)
> > -#define TX_CONTROL_SEND_SIGNAL               BIT(1)
> > -#define TX_CONTROL_SEND_MSG          BIT(0)
> > -
> > -#define USB_PDPHY_RX_SIZE_REG                0x48
> > -
> > -#define USB_PDPHY_RX_ACKNOWLEDGE_REG 0x4B
> > -#define RX_BUFFER_TOKEN                      BIT(0)
> > -
> > -#define USB_PDPHY_BIST_MODE_REG              0x4E
> > -#define BIST_MODE_MASK                       0xF
> > -#define BIST_ENABLE                  BIT(7)
> > -#define PD_MSG_BIST                  0x3
> > -#define PD_BIST_TEST_DATA_MODE               0x8
> > -
> > -#define USB_PDPHY_TX_BUFFER_HDR_REG  0x60
> > -#define USB_PDPHY_TX_BUFFER_DATA_REG 0x62
> > -
> > -#define USB_PDPHY_RX_BUFFER_REG              0x80
> > -
> > -/* VDD regulator */
> > -#define VDD_PDPHY_VOL_MIN            2800000 /* uV */
> > -#define VDD_PDPHY_VOL_MAX            3300000 /* uV */
> > -#define VDD_PDPHY_HPM_LOAD           3000    /* uA */
> > -
> > -/* Message Spec Rev field */
> > -#define PD_MSG_HDR_REV(hdr)          (((hdr) >> 6) & 3)
> > -
> > -/* timers */
> > -#define RECEIVER_RESPONSE_TIME               15      /* tReceiverResponse */
> > -#define HARD_RESET_COMPLETE_TIME     5       /* tHardResetComplete */
> > -
> > -/* Interrupt numbers */
> > -#define PMIC_PDPHY_SIG_TX_IRQ                0x0
> > -#define PMIC_PDPHY_SIG_RX_IRQ                0x1
> > -#define PMIC_PDPHY_MSG_TX_IRQ                0x2
> > -#define PMIC_PDPHY_MSG_RX_IRQ                0x3
> > -#define PMIC_PDPHY_MSG_TX_FAIL_IRQ   0x4
> > -#define PMIC_PDPHY_MSG_TX_DISCARD_IRQ        0x5
> > -#define PMIC_PDPHY_MSG_RX_DISCARD_IRQ        0x6
> > -#define PMIC_PDPHY_FR_SWAP_IRQ               0x7
> >
> >   /* Resources */
> >   #define PMIC_PDPHY_MAX_IRQS         0x08
> > @@ -93,27 +25,11 @@ struct pmic_typec_pdphy_resources {
> >   /* API */
> >   struct pmic_typec_pdphy;
> >
> > -struct pmic_typec_pdphy *qcom_pmic_typec_pdphy_alloc(struct device *dev);
> > -
> > +extern const struct pmic_typec_pdphy_resources pm8150b_pdphy_res;
> >   int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
> > -                             struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                             struct pmic_typec_pdphy_resources *res,
> > +                             struct pmic_typec *tcpm,
> > +                             const struct pmic_typec_pdphy_resources *res,
> >                               struct regmap *regmap,
> >                               u32 base);
> >
> > -int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                             struct tcpm_port *tcpm_port);
> > -
> > -void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy);
> > -
> > -int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                                 bool power_role_src, bool data_role_host);
> > -
> > -int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on);
> > -
> > -int qcom_pmic_typec_pdphy_pd_transmit(struct pmic_typec_pdphy *pmic_typec_pdphy,
> > -                                   enum tcpm_transmit_type type,
> > -                                   const struct pd_message *msg,
> > -                                   unsigned int negotiated_rev);
> > -
> >   #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
> > diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
> > index d4d358c680b6..4a892048908e 100644
> > --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
> > +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
> > @@ -3,8 +3,8 @@
> >    * Copyright (c) 2018-2019 The Linux Foundation. All rights reserved.
> >    * Copyright (c) 2023, Linaro Ltd. All rights reserved.
> >    */
> > -#ifndef __QCOM_PMIC_TYPEC_H__
> > -#define __QCOM_PMIC_TYPEC_H__
> > +#ifndef __QCOM_PMIC_TYPEC_PORT_H__
> > +#define __QCOM_PMIC_TYPEC_PORT_H__
> >
> >   #include <linux/platform_device.h>
> >   #include <linux/usb/tcpm.h>
> >
>
> Other than my nit above looks good.
>
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
