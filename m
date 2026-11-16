Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C7A606A89F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 23:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AlZ5DWzQ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=FL6lvdEw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gmW/mugoXaiLsq6AXS2jtN8Epu4Rrf2OfPQ5IzSEAa8=; b=AlZ5DWzQXcDVxDaUkVUb6vIAm3
	p5kt7OrjZRZhsaOEfUXUcNL3ufsDUZdZ2+mavcj0HoEUr3WOJ7neT5NVMdk8N2xWbaBbT/8B8gfHU
	VSunpB+h/B7I+q6EO7HH4waU4RC+4GYSTzncOaGy04pnuq7d2VZZ1lJHbYDLzPKJvE2gI1nOFXRv3
	l++iqlg4FtcUmDprTrHb2AYMK+WlhK1aG0d6zSsxaT2qxODQfJgV4w15c4GkFVvf7EcZtIzhzIsEf
	Fz/KdE5CfT2zJcSws8gvBHqd/V9oANVhbzky8/x23MgealjFVG0tSH5zX5mVsPs5+qscYAM0cLaP7
	X8rQcvqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5ne-000000047LS-3Mtt;
	Mon, 16 Nov 2026 23:07:46 +0000
Received: from mail-pj1-x1062.google.com ([2607:f8b0:4864:20::1062])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5nb-000000047Je-3dtG
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 23:07:46 +0000
Received: by mail-pj1-x1062.google.com with SMTP id 98e67ed59e1d1-3b3af93b85cso149196a91.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794870463; x=1795475263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wst+LDRzcSVTFePzkpCfXygrywKuV6vnyIhVCYwr1YM=;
        b=TWXtdQKAYJHINx68ze6BFZXq+8EvUbq5vpf7KJM+ZSLZNkKqYWOFUgrpiM5gxsBVnR
         tVpFN/97CsicxwmqRnWTPVy7DqqiTXWe4WHxhhPugo4/Gcc85LFmRXjZJssGWBAVof5t
         BY7ZqEi/NbpWNpjTzvL9LhHLODlNjqG2988M8tSyd/quscFRXNIiOMfSg1TL025D9TF3
         vRSzGdRML1IvREknGj5vV6hxfiM0qubjuufJTSYzG+he+yZxvuP9YrLJKjyQP1zkFYma
         DciGkhiPtSnb+8MeDekBVX3Twr5gGl68n+IdOwOmw3TCvlaDyv3il5WwMOD+ajESi/A3
         vcfA==
X-Forwarded-Encrypted: i=1; AL+hErFnWjRUOlmFUI3LbnQ1ACKD+ieECbVrba5voFbxU6Obl+m9xhrXM1WBFCiJOvopIXuVHCGAIONT8jQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z8dTgON4vNn4Np3hDIMj2Nk9Av7pFDQ/Yvr3SqfpZ8Y/uAUjxhr
	YNu/G70y11uhx3yJlG4CnGRoNyBPr5P8pSRuqcTxGimJX2rLdQp/6X+tayTk2qqRAL4TBhlpY4n
	4Rjy/2AI4lDf75xcOcUxnPHlBzky+xlZmN5cuF9OymhwhZZZv8BWPuy0pxxvYiDJVfXYSXTr03y
	/afR5jX2ufBl2B2ZCFzO1TooQtEgXHD9V0EIVl0GC/QYkfEfw2NESEdx0a8TS4qAm+j0ifI9m7q
	0V8NdGUy1Hhr9D2BmopkUJFcg==
X-Gm-Gg: AZFdTZcfBu1PUAETBrfmPibINuzNGvvlPWOUJxv7oGNfqklp/DQt5ZJVE7ypMuWLdvb
	JGBWNEVKlTIr34lGuSeKYglRiExKxVjuq/vFM3lICo04TjfbX+hdU4yIAmSh/ra8GgJu3B19HRu
	mwzJ2N9EVFPKTcSzy6frPaVeHPUxghzycb/Twl1v2swmbz4KxJlQMTVlS8E/YK/+m7UtpwjX0u1
	6dwZfDFV3sajYjT06KQrnuQu8afMTVecmajS+modLT58lFoffHE0ZmeQKtM9BwEiq5UcdmB3kSi
	KSdksZMtEHM5zynjIs0wqTsuPd1zUBq6TdUiDk2Jkoe1yrDPn+AkAs5mbV0V7cVJqL9W5NEPnEU
	j2gvBtcPzvdTrNmU1CTzlc4TM5ehzh7DKtFVihqxZzpj1S45vW6ljJegOfNdsXiqKVG3KlaXGBJ
	DbTUc0DHM4vFGqa0LubuF5mY5ousPihHiEdh81Rq9gOfA=
X-Received: by 2002:a17:90b:3f43:b0:3a4:fe48:d410 with SMTP id 98e67ed59e1d1-3b1b0a48e38mr11929466a91.30.1794870463181;
        Mon, 16 Nov 2026 15:07:43 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-123.dlp.protect.broadcom.com. [144.49.247.123])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b1b3a17086sm6443795a91.3.2026.11.16.15.07.42
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2026 15:07:43 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-375f0fd31f4so2499897eec.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794870461; x=1795475261; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wst+LDRzcSVTFePzkpCfXygrywKuV6vnyIhVCYwr1YM=;
        b=FL6lvdEwYhri/0eK9M+jVUnaSEVGE8vGqFlO8G+3BNZ16jM2PhV0xMCzn4cKJc8e34
         HFuJLjlQLUtAhjBcrdehARRM+RtsrZg+pMd5PU36YPdv788pPB6sjZXvFxMn2TAxtfkO
         dTfe98rM0luMOKv+7OCrDYVnJzzl9txvz45b8=
X-Forwarded-Encrypted: i=1; AL+hErG4aAlmIryaVIB6mP1crQD8xFRDu81PRr6t4LrleMOa0z1zIClpU7aRt+OyOwSAq7IgeCC0HDv52KA=@lists.infradead.org
X-Received: by 2002:a05:7300:c00f:10b0:361:1dd6:531b with SMTP id 5a478bee46e88-37967600b2fmr12357849eec.26.1794870461078;
        Mon, 16 Nov 2026 15:07:41 -0800 (PST)
X-Received: by 2002:a05:7300:c00f:10b0:361:1dd6:531b with SMTP id 5a478bee46e88-37967600b2fmr12357825eec.26.1794870460396;
        Mon, 16 Nov 2026 15:07:40 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37956bb0919sm36874961eec.29.2026.11.16.15.07.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 15:07:37 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	"open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)" <linux-ide@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:BROADCOM IPROC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v4 6/6] ARM: dts: broadcom: Enable SATA on BCM958625HR
Date: Mon, 16 Nov 2026 15:07:36 -0800
Message-ID: <20261116230736.1490551-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-7-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com> <20261029212513.4126083-7-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_150743_917764_47FAFE71 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 29 Oct 2026 14:25:13 -0700, Florian Fainelli <florian.fainelli@broadcom.com> wrote:
> Commit 77416ab35f57 ("ARM: dts: NSP: Disable AHCI controller for HR NSP
> boards") disabled AHCI after reports of boot hangs. Both SATA PHYs
> remain enabled, but the disabled controller leaves the eSATA ports
> unavailable.
> 
> With explicit IDM clock/reset setup and the corrected shared PHY
> register aperture in place, enable the controller on BCM958625HR.
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
