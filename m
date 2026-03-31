Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6874710F92F2
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 19:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAT+nDYve6kgAR5VZM89AJy8irlAZgvFfXbxsQnvPJs=; b=KjIrO6y8Rf/Ous
	+sAQ8zi1AxdBnso946caeXyuM25/ehkPG7dwVMryiKzcRzzH21xjBUoPFNY8KXi4pL4FP7hWK/+H1
	gE1PrTfYPfQRkKeAueTFrDK6aOTNcUqowJ6jsmmA9mf9Dgb2IuENA/z/WknuepwGlwWAuo4mxmluN
	m1PVLTGoUDWgFOkd+NJvTZhpoNX4Li9X/v6NNqPr2tHNDZSkNETgCN6v7082rFlz/GSsxNUdsSDHp
	VNKyHhgSjTCtCb3j23qTR9bLT5yiDfHetnrwqw4klp4ebYVh4QxQ4aYOjzilz/SIWUDxJvdFqOqHB
	q7EG+3jxixqIsxhoT7jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7etT-0000000DU6v-3U4e;
	Tue, 31 Mar 2026 19:36:55 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7etR-0000000DU68-0Lpa
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 19:36:54 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43b8822fc05so573540f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 12:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774985811; x=1775590611; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wm5yabFkUPAPL3YweJzowMYhYBBBkFWHObuU4lx0m98=;
        b=fham6iIAZt0wIu2xGoHZLZLoX5P3iVMZPJv/KEeQWRFEmcK7siqqaMwchrGet5cWYJ
         IKjahk+qATvSKOojL6nUMwAZxGAAid05RvO+UBHox+pO08S8Ps1TmIhAdpL0vamqUEOo
         JzqVRnoGa+09zhlnM4E1hlu0591u59HS7n/Eu3bZ6NxBE1EXMGHTPoXDtK+A2Cb3bQ2W
         RwRxsHotaA7+5U3tKtkRrSp4VgHZ5K9A293BcBddjD1UGqSjF159BgRrrNXKvuCBF7Th
         NaPx6CUEGqVjGZOYX9+TCM8pRxoanpATRjDERGYVH/+KRWtnUuX80zBtmN7L5ttJbFsv
         YRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774985811; x=1775590611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wm5yabFkUPAPL3YweJzowMYhYBBBkFWHObuU4lx0m98=;
        b=KIrrEai+UPCJBbultg0zXpuUkPzXmA9QIx3AmdCwqt0RMpMA1TAOrs7XKg53xP1w1L
         HJv20OcgGwAM19BLzekhrGUks8xXkKAztWLuDOGN9CYph9gSfmz6P+3LjBrWkBkZjUPl
         vPddv/p8u9QGLRv2rBPjHFjHvCbRv43QvtjQB379JPyzqDWtv9Nm37zzUrd7izXLgtbS
         ELs0cW1I77cCBci1+CEp4GUH8eMh7gGgtMNmSwy1wHv6bxv/xuXSYF1YJlJqeN2y9BVJ
         gT+ByuIi9aifFqZx6p5FYNEpdV1QjqR7w6sNUJ5kFEh5Lb3MHJXsik1GKzH/aOQBgN0Q
         nCsA==
X-Forwarded-Encrypted: i=1; AJvYcCVB7l9bQM2Hm/BXWHCIYXYT8s0vQLnPTIIEo9DaD6ztaBhOGU0kSpKQWcsl7D+sW0LzNk26dpbHdkU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwN38CDGenOTu0Gi2/9ZxSFo9xE5vSHXnLL2puvW7ZBOO+26Qws
	/FKk0MQlivgd3HA72TmwlZXaBkBCWqcV0gqL8Ho67FwB/SU6p6Ueo65s
X-Gm-Gg: ATEYQzzmJaHzdCmWhyj10SUC3GIH8otLRvQrVi6GJoT1j2adf1cz4zvQ3x361ielrVX
	LUw8RINNaXyAeF4VYE1xp+VhWOFoSA22k4jz78v7+IRn1cNyjMSzBkHegoeMuZ6Ws60ZQWTSsML
	T+QVaCd1tcWx5HZ/GrI5+ng3gj2dba1A+B8OnlqW8xGEATPk9X7j7/AFKdFG4q5x8zHcsQoJ3RZ
	sjnxlsg1jNZmym3YKFT9TFU7pX8k2msdn+tMDpERJqH4im8LXHwXLoQnzUCvcgEYG798WfJS1Gz
	bkTCadjf/RNQooE2XN8H8hd9+BndaGzHuKUvYR+Q9BskoziYZKYDeXfFMCp9ZW5CdGfhrIsOvG1
	EvPTi9INnptakXQaNkpFquRe38WVFinsvnlVe0own/iq5s6rwSmsOq7BystNQ7ZiqhvByXZCL1t
	DiyOEsNbncI9x5zwU=
X-Received: by 2002:a05:600c:1c0f:b0:485:329b:24e with SMTP id 5b1f17b1804b1-488835980efmr6323835e9.5.1774985810507;
        Tue, 31 Mar 2026 12:36:50 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:7fc9:370f:c54b:9685])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887c8a4fc2sm23549735e9.21.2026.03.31.12.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 12:36:49 -0700 (PDT)
Date: Tue, 31 Mar 2026 22:36:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 5/6] phy: realtek: usb2: add support for RTL9607C USB2
 PHY
Message-ID: <20260331193647.nhaej266v4gudrek@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
 <20260327160638.15134-6-adilov@disroot.org>
 <20260330215033.ven3bllyw3jverfg@skbuf>
 <1884dee6134e1c069e9f68edb2fdcd7f@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1884dee6134e1c069e9f68edb2fdcd7f@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_123653_158364_ECF6F1D1 
X-CRM114-Status: UNSURE (   7.38  )
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

On Tue, Mar 31, 2026 at 04:48:08PM +0000, Rustam Adilov wrote:
> I am personally fine with removing the "force_host_disconnect = false" and other
> falses in rtl9607_phy_cfg but i am debating because it wouldn't line up with the rest.

You can also remove the other unnecessary initializations.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
