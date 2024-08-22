Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277BEC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 07:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYOcnk6/6riigDOXB4wCgGUyd9K5Qb8hU9qqVnDbk0I=; b=12GumvWFEgowLR
	m3vNZA07hV1UXK/MwjCkB5U95TJkCueBOUDCXw1s+zs/DOO/TrqEwfThh39lUlv3p20mK7YN+g/l5
	hxVWS+vwyvmrwmhtXXh0B59dMJw+ASH1YLWre1bCPqIsz01fiIIZ3p5CuZqu8fTjO+4GeJEDNafh2
	Ef1pCEB2Aivb9bIrdH7LBjiAhTi9/zNyn7FpLABb9tEG431ot7fWurwzsERtjU0ENhN1G3oITyqAH
	mJq7fvIr/sxrGq8QDJ1lnZxCoo0ssyT7jVlRG//KDQAmFhGM1ODjA0zvx3cubLcYmBZ0Y9lwqP8kv
	2c92Q/692Af42YzSw0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1xK-0000000BlpK-3aYB;
	Thu, 22 Aug 2024 07:10:02 +0000
Received: from mail-wr1-f45.google.com ([209.85.221.45])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1xI-0000000BloO-00kg
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 07:10:01 +0000
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3719f0758c6so203428f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 00:09:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724310598; x=1724915398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3H1kaiqBDVxlwA4iJxcavRAusD8vGrmkXFJ66NtzGlw=;
        b=oVR/A/6vQJYCwd4qZ/e0W2+GGqW+mKah+mWXTcNbdXtAVwxDsfmR9hMp3mseaChJ3O
         aDYF/rOaxzBhxr5+rqbKfonBRclOh+IDK+eJRjRreYkBxcL1nmqy3fI2hUPYczeMpYwj
         8EnWcKQDah9k8fFVgsFYZAyUhgf6IAxFsaqcg4EEOH+Wu81gkDLjeCUFYiLuwNgC4BqC
         GiH1/+/NnHoPufpR9u72/MtQNq4AcYPUxM6BMXBe/wfevnUo/NBwNeqCGz56kZz3ore9
         9D3+POE7zyl07G8IXKM+11CfQ0AKrpZSO7brepZCDniVgODWFvpAiE0Wa5E4i6SfcBzS
         djQw==
X-Forwarded-Encrypted: i=1; AJvYcCWS4Z8tU+kjL9wSIPCW6nnhWrNcek6/IULeXWGeLcBASChBMCsPT6185siYvue//DjmCiq7SFAYdWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxP4+4Q656zG+IBALZ2l6REY3GcEsxW6gRcjt8dlBZ13YI3cOR1
	hF93i9vi6LdHyn+EKnDHgTorn7W9tT2jclSxEpbBGmVp8SpWmM08
X-Google-Smtp-Source: AGHT+IEaLQJPXHf0jzTCHz44xI8pF+94YiU8T8uZsTFO0g+IRTIrxZhafKN0PoMor5S2XB+9sLTnrA==
X-Received: by 2002:adf:a382:0:b0:371:86bc:6c05 with SMTP id ffacd0b85a97d-372fd57c982mr2501966f8f.10.1724310597974;
        Thu, 22 Aug 2024 00:09:57 -0700 (PDT)
Received: from krzk-bin ([178.197.222.82])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42ac514e093sm14020635e9.7.2024.08.22.00.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 00:09:57 -0700 (PDT)
Date: Thu, 22 Aug 2024 09:09:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip
Message-ID: <thpryn4unrebkvx4a7jhqmxt5ntmog2gcw3ekh6h72jews4een@b43tsg7poegn>
References: <20240821215357.20224-1-ilordash02@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240821215357.20224-1-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_001000_061564_D62CD112 
X-CRM114-Status: UNSURE (   9.49  )
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

On Thu, Aug 22, 2024 at 12:53:56AM +0300, Ilya Orazov wrote:
> Hi all,
> 
> As suggested in the previous email conversation on this patch, I am
> sending this new version as a standalone email. I hope this approach
> makes it easier to review and keeps the conversation history clearer.

Where was it suggested?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
