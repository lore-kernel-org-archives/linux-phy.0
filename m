Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3ABC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 20:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbQsJhqRS3+X5utHhPfzEw7WtlslkdLq/2K4G42t7Zo=; b=HFy3eCab/MtmJZ
	mLHD+38GwY1m3rYKDCRVLJovRzxsQOcjFjCu6/KF87o0reUzZYg5bqnUNvTwdYd9DZj5779rC62uw
	MJ1z48LmqUiCsjPfDVM0VuT9zhLG4saJguYQBVBnt+CFyIO8IXKUnCeSSaJgkJaI0jK340kECkG0+
	iyxrrpekWxaurc8Ir4FvXJBO3YxEYiVcWTkJc3LUjEIySOja8aQcFafcC2qFnj9Q8KMJTDgaBdXy+
	O2kfWZ7uk8kgYPODeVhzC2JZkk///BWskgZuwvvUP/1ObinSONcexIz10mwDF1AnKOP9KoBGUwu/4
	+bn9yzpr3M3NjQ4VM2yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwrnf-00BJRU-4Q; Mon, 13 Dec 2021 20:19:55 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwrnc-00BJQd-Mj
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 20:19:54 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 n104-20020a9d2071000000b005799790cf0bso18718760ota.5
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 12:19:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WN/EU3Tqk0e8ErBw3JtRSP5A6/xa+N6f3cKQLbPWvZw=;
 b=1Q+55lgLE4Wom9a/E8K3ZCEqAxj7gaOvw/HPeUu1ovpU+Vi6ovaPI55PDY0VVX2Edc
 JPFnHcM6Xogq4V8X5DM+ImOH1xcqGuOG3C8kX+9Y6h4w8c4btZFhiTKcQ1S/juS64YXK
 Ejmov3DfKuBZJut88TQSt/5CvUmx+uYEwXJWaT1C4ROwkVA7fjE4KUsD60DX+Qn5OkBn
 lL18KNorDCevqTnrAoPdE69dr+tWznLQNlWaTkZRctrKuSuGEHciDSV+MgWIuuzmf2Hn
 uZJGTPXgCfkYsTTpZGcX87/nx0Wt+lbLiswTWnWpYqatvWnf3cI1i5i0FKTh0LIz7jN3
 CHZg==
X-Gm-Message-State: AOAM530mXnJgI0rp5/xOpEr8SeYTPZv16OezmueqObws91q8RniMBP3i
 TaaO06f3kD52ULxkg5LosQ==
X-Google-Smtp-Source: ABdhPJy/Kdpt3vHE/n5DWLa5z2zo9tRnw/q4qgWuWRbWc1zYTxCxupDXrhT9Yyr+7fnGb3/2r4HHOg==
X-Received: by 2002:a9d:4543:: with SMTP id p3mr645542oti.99.1639426791186;
 Mon, 13 Dec 2021 12:19:51 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bi20sm3047537oib.29.2021.12.13.12.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 12:19:50 -0800 (PST)
Received: (nullmailer pid 1502975 invoked by uid 1000);
 Mon, 13 Dec 2021 20:19:49 -0000
Date: Mon, 13 Dec 2021 14:19:49 -0600
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 mux-states property
Message-ID: <Ybeq5dNYjN4GOzdV@robh.at.kernel.org>
References: <20211202131002.12217-1-a-govindraju@ti.com>
 <20211202131002.12217-2-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211202131002.12217-2-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_121952_763915_E48542E7 
X-CRM114-Status: GOOD (  20.92  )
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

On Thu, Dec 02, 2021 at 06:40:01PM +0530, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceivers,
> muxes might need to be set. This can be implemented using mux-states
> property. Therefore, document the same in the respective bindings.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 6107880e5246..5b2b08016635 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -37,6 +37,18 @@ properties:
>        max bit rate supported in bps
>      minimum: 1
>  
> +  mux-states:
> +    description:
> +      mux controller node to route the signals from controller to
> +      transceiver. Depending on the mux chip and the control lines
> +      in it, the first and second parameters can be used for
> +      representing control line and state. The number of arguments
> +      is to be used based on '#mux-state-cells' property in the
> +      mux-controller node. If '#mux-state-cells' is equal to
> +      one then, then the argument to be used would be the state.
> +      If it is set to two, then the first argument is the control
> +      line and the second argument would be its corresponding state.

No need to redefine how a common property works here. What you do need 
to define is how many entries and what they are for if more than 1. 

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
