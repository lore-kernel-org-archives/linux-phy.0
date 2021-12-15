Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F6A6C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABTMHkmNdXQQXzOWoeUoqOTgpWp57mkgpsJLfbxwGdQ=; b=oIa9Y+g/ZxqirI
	Q+2AvozxLv9XoQCDLoAK5857hzi2f02edcGp4IBK4mYGkhiBrGdFfvv862MngHeDKTFie9mwNOCOU
	+GcQVZkBuXual319YfH5owPR/33c7WMSpYL5cBBs2+8TAhEJpoyfMJrBgY82qx8VFH1BjO8fELFg6
	yS+VCrsrGxNXMa16h3EWROiZBHbSm3qHeeG0vaMnw++skQaxX6r9P1UnPSvhaMWzn1JjyNDoq/p1/
	x+9oC//pLyfFl+xXdLIh87TevTCuOYNz7PEXT3qOfe/sF/MqJ7yvBQJQdEQNHHoAqkVXuvzibZ+KO
	DYY0OW/wQki58ra4DCDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbsC-002o9U-Jm; Wed, 15 Dec 2021 21:31:40 +0000
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbsB-002o8m-1Q
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:31:40 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 g11-20020a4a754b000000b002c679a02b18so6306086oof.3
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5TgrfeJQ6PIrLmuA6CCoBwY9aj+LWsBOZinuo960E0I=;
 b=S9ag2N0gXlqPOrNJnCFSxTA5Mofw+DAAvIeXIQMWzHbDIL/JYfRJWf57kRHKatZCcU
 9gjMdhCOTu6rlCMlWAcac7fmrUDPA0QQEBOragUrRFac5p+pMhERRpJ+SCIZe4+PAB0D
 wdMlVdgOrWg+MYvqpY4SMLlHamAXhXuF83YrqNjBKdOwjrxt/4nBA4Wqa8QAPCoqQMW9
 pRRmVAgQe7SzxSXp3htafGQKkMDmWF09TonRg6rtNTi7f8/CxdWOGkK8k8sTs8L4c9aE
 IK/Oq4pAgKybNRhuG/XKw0L4mCa0BpG6tSj0yYlaUJVBkeKCJr34VwrVNMm44yCj0mbh
 TnvQ==
X-Gm-Message-State: AOAM531WaymJ6mDVQO7SikumcaGGj+y03hTcgunOPuk/Wzp+MBeDjcs3
 t1B5t0JSI0421Y1qsmd/Nw==
X-Google-Smtp-Source: ABdhPJzEmteDgHVONruR7gt7ZryWpFzpxyLAc+3z6V/atdqL+n0Do/DlWOfzeBA1E0VTshAvT4NyRg==
X-Received: by 2002:a4a:ac0a:: with SMTP id p10mr8884348oon.96.1639603898182; 
 Wed, 15 Dec 2021 13:31:38 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k16sm658590otp.21.2021.12.15.13.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:31:37 -0800 (PST)
Received: (nullmailer pid 1874880 invoked by uid 1000);
 Wed, 15 Dec 2021 21:31:36 -0000
Date: Wed, 15 Dec 2021 15:31:36 -0600
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v6 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Message-ID: <YbpeuJYf8BHzDPQx@robh.at.kernel.org>
References: <20211214180703.3268-1-p.yadav@ti.com>
 <20211214180703.3268-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214180703.3268-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133139_108609_B9D5AFC8 
X-CRM114-Status: GOOD (  10.33  )
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

On Tue, 14 Dec 2021 23:37:03 +0530, Pratyush Yadav wrote:
> The Rx mode DPHY is different from Tx mode DPHY. Add a separate binding
> for it.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v6:
> - Add a new binding for DPHY Rx.
> 
>  .../devicetree/bindings/phy/cdns,dphy-rx.yaml | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
