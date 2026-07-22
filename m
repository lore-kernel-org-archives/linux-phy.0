Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B6AC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duyzq1IJxYbsHP3KyvCf1fatPHxxv2FYi9Ps0FeydzA=; b=BzC/FgBQqR1cx+
	3/zkU79RgzPAiSA2sNyxLSfndiqf+sqxjYOsBXR6usBXyb8lZ9kIPfTmSzG+I0Lfu29uZkCKX/Rf/
	Hsr+yrf0/TSbVFU/d/zixhsx06w/JqPwv4z4uPqVKtMCxO6ZlnTAKb8lIOSfjam0r0j6cgFrZ/sit
	GgwkyOQ+8503lGnunNGmnc5MwhlwkztfgUbNTbm1t1k4q7ZpaQiW2O/RbW5ILjfm+fjCd8/sUVK70
	P1Zg8HXJeAhkw8h5Vn5NImQT34i1/wvAVHCLEpPu/zPWNlLQKZW38aGyGclRGCR08qVn0m/2RaiMz
	lY8797HBKQrcTH7Dv7+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRo0-0000000BBev-0LlH;
	Wed, 22 Jul 2026 07:55:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRnz-0000000BBeH-2WEL
	for linux-phy@bombadil.infradead.org;
	Wed, 22 Jul 2026 07:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ylc8TXlNP8HCp9xOR7j/KXR/abtqHgmLUYlJxvcNlVU=; b=R7JUGFp3ChZZVY6rh2d98SxshP
	BjjyTXYAdLuzJTmJN5pqnL3Ntn4D0BMLr3zRZitPLQ8W594kxO0GrIQ80LjTc8+qG603grjGH6aHF
	Z8RIgNYdrXngoCTtWKxy4IR+5AjG9ayIc3lKCg2DW1zMGscm0+BgC8loPnzCvHDedW80jVT+GhA6Y
	5uVId2nNxdH6UUDgle0SmXrufsDrq2HLLi23xb1+SZ0xSn8SwQDXcSo4d6kFS3vvcjPUge7w6zeVo
	33C5P1YnmvYZLQu1hkeqlA5lISxU1RJyYhYxJ5e2VET8exHi2pxpUjQ8/yw50aKd5UOhtGvEdNWm6
	dXRUhb0Q==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmRnw-00000000bM3-1mvr
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 07:55:50 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47f706438c3so193009f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 00:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784706946; x=1785311746; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ylc8TXlNP8HCp9xOR7j/KXR/abtqHgmLUYlJxvcNlVU=;
        b=b0MEEkCrDfnjPHtuPpNzC1Tr6NY/1Zjbyeerp+JgQ7zXI49JM/dOV5JE1kFlk292RF
         EsUjUOTF03S7vQrjRr49F4plrNQcV/4DtKoClu4SJ5yhK+wxKdswUMD5dAX7eC/sX+bF
         mBjhRoaD9VnnZGQdZvpAL2JZZFoguDwzy5iD4ZuB22OAsN70xhAZVT8Q0AEQZt9lHMry
         6bgJlxNsAV3gntrjYT1g36iCeGNnOz/ugmvi3pxQlaKyYLu2+5kPeMp9GsPMpUOge2LI
         rMV6Z/2iUW0E9y6v9hfA0FnW/5SF/8KM5t9Q70Zx45MXe/Af2L1mQp/C8hjvbtAxBqX2
         vidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784706946; x=1785311746;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ylc8TXlNP8HCp9xOR7j/KXR/abtqHgmLUYlJxvcNlVU=;
        b=cmAeGYXpC+nay/YwantnUKM6e0e4OSbQVe0i16O6EOfy+b/Fpy8B+DvW+mJtXp71PA
         qUuSRF4+3X8arKSNsGxznGWmYVKWvSUxGUtX9rIprfRD2IPl7RqRepoNZNukRWrXYyj2
         oI39cYN+mKGt/LUzlQFjV/v9fGZpQBYbBydUr2PnmhSSEh8wlNouuOU5CIEAxENUtDNs
         TpgHb4lb5tfEo89b3PS2a57OpLN0RPEUIr/5TRQbd055Jj40+dpitf9xhq2ZqBCVjhqd
         pKG83QzDKxX5845T0WKwa+tYd4gSnTn0vku02eIVKbBimaEPYIufBEO72T9/7OdlLOJk
         vpeQ==
X-Forwarded-Encrypted: i=1; AHgh+RqE4NwvAWk2DJlN5ASz7ZpDrYyRJoBGUtv9Ubuf3smZvDqzQ7NAQtefiAQOMwB4u+fzSHo0tGeZ6y4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPlL6Gb8wLUcKcM43GlGSu7CFVCENiDXe8m7QrdhlmGdk5NDQW
	CRcijo3/U4E3FCx7FPSEWZDkEz6jA2xlDasROjlQOhuyNC6R5UuuPB4q
X-Gm-Gg: AR+sD11g3t5wog9ntkuLTNdhdi8JSOsRvuIB+pGMUjjx5TeV7In1zwY2m3ZeUE9fJYn
	3e0tKyV1dvYEyEg6DyhzovRhocAmc0eRA4V/pSliflIE3UNqqe3lVBpgilTwmQFHHvW0voPPgmb
	SD3Q2tc6UpmzH/Sx5E15AhQjcpqZlgSRTqhkXQ/NVVGsO9TUGF/5wHLuKZDNeZY8rll+eaW9Pgf
	7E+5YuUSrt6B/3Sb7Od6etA6u8F1jok06ZSmFWvGVrf1Gm0iSVyhvu+X2aAw8+UgkuJLRJvvLEP
	L3gATn7v7H6mx+nNUT3Ds+gShC60yGm/cpJHOjfqYGQucB3Tgi3AlqQBGejBx5O+r+gvHSCQX6e
	b3S/cEgXz7FqsbzVPhWFCU0mNteYxtVmwBdFtKf4wuJSuEMitvncMtXJPeLjlfaVfIMbq
X-Received: by 2002:a05:6000:4687:b0:47f:8136:e7f5 with SMTP id ffacd0b85a97d-47f8136e9edmr2516706f8f.2.1784706946354;
        Wed, 22 Jul 2026 00:55:46 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d801:b100:1a7a:c7e7:fc27:12d8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85b9a64dsm3759581f8f.1.2026.07.22.00.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 00:55:45 -0700 (PDT)
Date: Wed, 22 Jul 2026 10:55:42 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Michael Walle <mwalle@kernel.org>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 phy-next 1/9] soc: fsl: guts: perform fsl_guts_init()
 error teardown in reverse order of setup
Message-ID: <20260722075542.p3uissyqzcvfsdri@skbuf>
References: <20260721231603.67865-1-vladimir.oltean@nxp.com>
 <20260721231603.67865-2-vladimir.oltean@nxp.com>
 <DK4X0XV6ZM1E.2L9G007WXO2J6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DK4X0XV6ZM1E.2L9G007WXO2J6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_085548_583344_7FC3A675 
X-CRM114-Status: GOOD (  11.94  )
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

On Wed, Jul 22, 2026 at 09:18:48AM +0200, Michael Walle wrote:
> Hi,
> 
> On Wed Jul 22, 2026 at 1:15 AM CEST, Vladimir Oltean wrote:
> > Michael Walle has confirmed that ignoring the error was intentional,
> > and we preserve that:
> > https://lore.kernel.org/linux-phy/DK44809N7Y8I.J2Z3U4N32H0Q@kernel.org/
> 
> I thought you wanted to check if kasprintf() fails and return an
> error? Just to be clear, I'm fine with either way.

I did, but then I considered I don't have a strong justification, and it
isn't a change I need to make to make progress with this series, rather
more of a distraction.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
