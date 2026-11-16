Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CDA60A3807
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 23:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=R30S8960;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=Xp48Yo1i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kcNI62JK3g8YDRH8qmT6ViKF5WqDdU1Xs9/lGdH6lh4=; b=R30S8960REle/ZH6ouC2+bxzk5
	o4zhGbTI8OAaQH+7831Lm6W/Y6uQBEvC6dXtOl1XGu3kzArCfKxSfor8fuayAS4cIeh3R52WN1VFq
	2K3WI9LMwI3rf++in6GGrE3+g1qV1eT8wMIRlF8DhPE/yHJYvU/mnYcW7yu6FKoeByu5koOkRJNGD
	hNbEWEiBgUDEUBrwlAPCAbSbL7dlXo43hFhdbWjvy7diOtrTRpmGeW9hRrmXCnt4ZtNE+gkr7v0S7
	OCXsrGXjF+JjQ22eLjtrbYQYFVOtZl2l8NhpQ3xSDovHUSuLJS5msEVrpLfwVrf4VAjuTTzYN+TFU
	/sWkAmqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5nU-000000047FO-1SZQ;
	Mon, 16 Nov 2026 23:07:36 +0000
Received: from mail-pg1-x564.google.com ([2607:f8b0:4864:20::564])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5nQ-000000047Ci-3b2V
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 23:07:34 +0000
Received: by mail-pg1-x564.google.com with SMTP id 41be03b00d2f7-cdb684859cbso2842236a12.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794870452; x=1795475252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hpknOOfaXRSRwzsy+zJvYqiC8yonJsdMZo1b7Unb9Gc=;
        b=1SOb/h1tdE653Og+ErteEQGFj7TI8uuyBGN/3h8kjliMoPuHRFuCvDl4nq9eNvL2Ub
         mpOwGxiATCclJPgxW6YxdzJwiZvjJHz4Zmx5trp3CsL8oJbwIBzMarLc81chcDsYb9Di
         5Q+R3d/Gx4a4zhox1c1P8rJ96OoPjups3DtCK+tzHnjPvlnZ2lUo6HhMigsjgR23dBv1
         kTg3ncNby/RRRciR4U46jc1LT0hUOkgpxR+V19BeYObUbmGH2y90mTfluzszXBOIRJyC
         LvIVwpLn/96VYw49mPidJsRGlsJC1loUt+/zeqC2VeXD75Nal1ziQJvsMIlMcRvRsRGE
         VOyw==
X-Forwarded-Encrypted: i=1; AL+hErFZs9LuxXGMcW6HVrzK41WBvJ1LGkepDbzm2GDU8bVUWcAmebyO+I9UWLx45PSAF9GkAVrED7jNT70=@lists.infradead.org
X-Gm-Message-State: APuU4Z/OrNAexSFTzGK0YhxBhUjt9wh1+Cuw/KmJXPbKetWusq8Ho0V8
	yeitMOjsNQRu9YFKhgFNb7xLdD9x9oDP5NSkTcRLYfHaVZeNS/mAOh9LqjXGvPVOnRXBkXKWgIb
	6D2+a1U+5Vod4jdEdGm3Foms5cmY8Kvbfl7RR21JkYEnRBeVQ5yumc4vQSkcIEsoRRnO+M+PKn6
	KcjYVd5ozR91LXskKdM2SZ6BGcJUQnT2ycgwzkJpNl5/7gzWnSeZDEn96Inet/jL3GmQrzcDyxO
	wqQJWEeQgaQgLfRno0Hyn34lg==
X-Gm-Gg: AZFdTZdSwAbYsbX51/gf6pXdiG2TwkIzM4wN9KkaJa16GDfGcAJyoqJSmOaJ7YeuCEl
	HIiGtjn7OnX59DH2o+Y1xcyL5N1Gcm6L41S7xK8BaLixaH9fp82TgyA6zakIHuZ18v0rryvZf9A
	Fa5LKmrTKVi2IGsiQZVV/yDyce+lzufztEZUMFPmQvSCGa2fwIFUmdN63emd4FVQqV0RCLDChMr
	Q+d6Z/IcNFasMy8up3/2UzHV7psS2kQ1ZMBi+wtrkNM7HJC7yNnjnygR3wgLnPAMKFlGEYArMr0
	Aoiynl+NdAQBSQ66hAoYFfSaW0AOAQMboWa0B39lVMdcO9UCiNJlmtusYriHKYVLGLVwXECqyVr
	RkqoXTrfqFMaOi9P4zIHcoBsUZU+Tt5uaVYbv98/XYF32M+VEBtID9z04Bh6SHTqN8jClkKuWxN
	aT/cyZtdg36Ff1I68Yyfe+1wkYftt7Y4NIhplYtjBZ
X-Received: by 2002:a17:90b:380f:b0:3ab:e588:c29b with SMTP id 98e67ed59e1d1-3b1b0816e0dmr12127084a91.5.1794870452003;
        Mon, 16 Nov 2026 15:07:32 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b3ac020c2fsm557427a91.6.2026.11.16.15.07.31
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2026 15:07:32 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-378722fd4a3so4467561eec.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794870450; x=1795475250; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hpknOOfaXRSRwzsy+zJvYqiC8yonJsdMZo1b7Unb9Gc=;
        b=Xp48Yo1irzJNaBE+kMJu+ykMbt6WkPT8HoSQiICVP5hNaOLJEYkW1XNK5zPswIq13K
         +n0vIj127onffrTo8Z/958tJbsYSlQ8WWxSRT+A+WfgpsUyTUx0I6qYeg6X807Cy6h6W
         uYmUM9OSjgDnfQC7Uo4XwrhJyOkJQg2OXdT2c=
X-Forwarded-Encrypted: i=1; AL+hErEHkBXEQCTK7nT0ylaz2qMco+vEvp8vCuC+lf80nM3is3tCFucEeZCpxwZEcBVuDgRdPNEXpgM+D0Y=@lists.infradead.org
X-Received: by 2002:a05:7300:cf8c:b0:369:f70e:bd40 with SMTP id 5a478bee46e88-3796628f4c8mr11453323eec.16.1794870450470;
        Mon, 16 Nov 2026 15:07:30 -0800 (PST)
X-Received: by 2002:a05:7300:cf8c:b0:369:f70e:bd40 with SMTP id 5a478bee46e88-3796628f4c8mr11453300eec.16.1794870449743;
        Mon, 16 Nov 2026 15:07:29 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-380e031f3e5sm4677314eec.12.2026.11.16.15.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 15:07:29 -0800 (PST)
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
Subject: Re: [PATCH v4 5/6] ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
Date: Mon, 16 Nov 2026 15:07:27 -0800
Message-ID: <20261116230727.1490184-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-6-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com> <20261029212513.4126083-6-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_150733_219698_CB103DDF 
X-CRM114-Status: GOOD (  11.64  )
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

On Thu, 29 Oct 2026 14:25:12 -0700, Florian Fainelli <florian.fainelli@broadcom.com> wrote:
> The AHCI controller on BCM958625HR fails with the dma-coherent property
> inherited from bcm-nsp.dtsi. Soft reset times out waiting for the first
> FIS command, subsequent engine resets fail, and the disk is not detected.
> 
> AHCI allocates its command tables and received-FIS buffers with the DMA
> API. Declaring the controller coherent bypasses the cache handling that
> these buffers require on this board. Removing the property restores
> hard disk detection and operation, as confirmed with a diagnostic DTB
> that changed only this property.
> 
> Use noncoherent DMA for SATA on BCM958625HR, matching the downstream SDK.
> 
> Fixes: 56e2ff0346a3 ("ARM: dts: NSP: Add dma-coherent to relevant DT entries")
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
