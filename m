Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A67BC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 20:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7C7Po6si+nzGKTFlRm7m0DQ8v9/mdNcILsRseUNluw=; b=POLXFbAlX0cmOC
	2OBWX2aZfAq6miVlHCK8i3tun5aK06hncvHdBditcQxi84RSr4t6hRyNCYBYXPfUD8vH668VtO8VI
	sY/izIt0q+OkdFfXfIfqouzShaQXccAMQqvjBPUPdF56Dv3omULO5SbWu1W6DU2nrtCcZ9qiJRecd
	TQosOc+qUFCFBuuIWXwCdngS4EFcQCpravmhoHh85IchiWjS+Qp7EOcj81M2aUAaekk45rToJfIIi
	h7+IU3weFU6yNPO5XwosxpSV0fqQh7tA22st8sDVaxZq0wPM8aZuQjheV3N/rxH8ZvKhFdD19Z08+
	oYtipRGdnxXM3+FYtenQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxRY-007X55-W6; Thu, 16 Dec 2021 20:33:36 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxRW-007X4O-E1
 for linux-phy@lists.infradead.org; Thu, 16 Dec 2021 20:33:35 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso361561otj.1
 for <linux-phy@lists.infradead.org>; Thu, 16 Dec 2021 12:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hfg8ACYlikMDDEUu3EXFo+9JtNm0KhnPtElu4BGn4Jw=;
 b=PFMYwuc5ezVTGsRXy6VkyP0Zl6M3lWAPo//lQtaGODsQAuWn11GRbhxECmAbh49Tws
 ExFfCn2JPngDHWLlrBrJT6zIb1nmxzD1Op9fWcxjhGgHS9dmpWOytzfZFteWPJXw242y
 +LFheY90nPILLjOYcuPxrqY+wNLBHayDApoqtsQoaPiyeRzCZATPLOFl3UmfvoA4+DZY
 TL2niNxhPzUJFUr71X2QM4RGYwjpFwpK3Sfsxn0FIG3D5Xy4XB2ii8vWjPzLKyGMOcnr
 ra/i2RFgAaJyBY0dM1kx1rXpIzd4xk9rrvIqCo6a48/o8oRpW9o++uAuRwsq2NYbcfzn
 t+Uw==
X-Gm-Message-State: AOAM531oDvdxbG75hjrWAw4mZ3IV14uXhlC43d+qpS9c+itEXfrwNafA
 FODt8qHHr+HC3VSMYu4YRg==
X-Google-Smtp-Source: ABdhPJyFHwjvpklpQVesYfYXxrlFzdhuIejqiguu1DyewZF/CSRFpeDC3+bPOv0TWVjolIjQnoArTg==
X-Received: by 2002:a05:6830:4389:: with SMTP id
 s9mr14117622otv.97.1639686813783; 
 Thu, 16 Dec 2021 12:33:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id t11sm1227217otj.24.2021.12.16.12.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 12:33:33 -0800 (PST)
Received: (nullmailer pid 708667 invoked by uid 1000);
 Thu, 16 Dec 2021 20:33:32 -0000
Date: Thu, 16 Dec 2021 14:33:32 -0600
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 mux-states property
Message-ID: <YbuinMnaJHW/hUVQ@robh.at.kernel.org>
References: <20211216041012.16892-1-a-govindraju@ti.com>
 <20211216041012.16892-2-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216041012.16892-2-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_123334_507269_66567D3B 
X-CRM114-Status: UNSURE (   9.78  )
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

On Thu, 16 Dec 2021 09:40:11 +0530, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceivers,
> muxes might need to be set. This can be implemented using mux-states
> property. Therefore, document the same in the respective bindings.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
