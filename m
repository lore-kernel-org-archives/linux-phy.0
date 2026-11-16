Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FE360A2607
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 23:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kunva0nL;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=c+4QIZ8y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ten2nqDLVEG5QAVp9Mnr037jGeGvCK9kji703Y9G8O8=; b=kunva0nL6QTeZcOZ5Gnw1d/8Lz
	kwBlkCXP2dPVfkJxzV67A5w67EEOWsObafErC9WubsHfcAXKAjHnu66bMPqXFoT/PECotxnR+92ej
	AWN7zWUmPvMCgz9tZobkv7CN8gWTCey0q/i2TAn0Ggbu2AXEtUD73rcJ0WRn3II+qMFdfLRcCOmUK
	AEu0A5QMiFNBXWH+yVY/QyspxWU0vh6xJ200Fx02pmlKDv2gfjuAqc0NDxWrFTC42BrabJRkUB8oq
	VWHrRrCNxPOFCuj5CKOWKNEpqgG7TVbNtDG99KqfCZWAARZcOBp/Ggp3+GqlH0yY2whcHGLGFeAT9
	f9lJ1U4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5nT-000000047EG-1AgA;
	Mon, 16 Nov 2026 23:07:35 +0000
Received: from mail-pj1-x1063.google.com ([2607:f8b0:4864:20::1063])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT5nG-0000000475s-2FwC
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 23:07:26 +0000
Received: by mail-pj1-x1063.google.com with SMTP id 98e67ed59e1d1-3b10ca4e3f9so2099229a91.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794870441; x=1795475241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=d7QIkQGcuhgCwpwukZfMYl/m0eNiW9yDpQCv/4z6USA=;
        b=fNkOs7JzHs0snf3uqvbnNLQ5iSC0Qc5/VA/wWZBxTIBzEqPPinKKBHg+JEK3pIEXdI
         jbiYD4I83TSbx3Fr/uDe62DWxs9WOI+KartgZa76NryClCZH8Afx39CVBxP66Ep1XiOt
         E/O6RcY/If8yAEpC0PxKz0qMiUBaod0liGGecouFRoRpPWZixhz3rkoPXPpDayzLMTm7
         V+/U75MJEYcDBPT6kEMfXOpKq7nMF4fH5HoCiolmWxcit+GARCAaewWNe3XQBIBgl/Ew
         UYLyYIKfqRAeiBnB3Dy0AjB2EBhDXkv8vQUBg9mtTajK+Udkcppa/W0CuamEvnj2Cc4z
         Ohsw==
X-Forwarded-Encrypted: i=1; AL+hErF+DuUmJGLAu7vmEHU9SmDqGAVaf8MFzdocpurFSaSEbDcVgR83ydbCzG7A8nCjbHBfTncdO6j2mPk=@lists.infradead.org
X-Gm-Message-State: APuU4Z9yHwXk3ZXNkN0lxv5iwTRM9yTYyzlfeaB9o9f9bhyL5F+dsu87
	2tJC6pqyxoQCkVXUm1568NWjpBrsGUNbxtoWAxv8KU9RQ1f1JAKVXn01BtxdjMG61iHIafo+uJL
	GqmH9L6t47+aPR+dSm9mJzr+JnAvjP3UwSCOd0Yyjd22QHR+icaI4wcPOgj6m1nKpKmMBrVlZrt
	1FjJIq5vI1SPGx7rcIY93VJemX+WhNufjjg9YDUL5S18m+4E3zTg2SLmJCmd+zK5PHihTrJesG0
	tNS/gLRHVuhHZdDHYISLZyJ9Q==
X-Gm-Gg: AZFdTZdnv2J6LUOXIvEWbsoJMCb73BTDcENIt2xXpNED1pXwtd05vNhQ7yegLjYf3Ax
	QWywgcVoDLJOgcD/d5uLkYLIPNNBH6MfBmUTkZeqsLXhUrqx9MqFS0KhOwR47x/tJL5Rt4cmtHw
	Yaw87zLV6hDkfTOEwc1XPjKnwDRCRAFyZqSNmHLyhxcbJLKKYjqqyDZRW0zntEcNtZOK2AZpbe6
	RbDmQimjM8vSutieuHSf+7XT0cF+QfDuX29L1yidMA/x/Qsz7CVAkl5UjF4o1Ig8TM9MSWtjd1p
	EOb27h/ZMwDVOb7M4E25b6KvjMHeK6YYGNljzZlWykDSDuQFMvTwsC8sSmMMoJdNJ/aKxnoD4m7
	c0KeCy0Qfg8NKlHcAzvQQ+n7p8o2RBUdXF658SGBU5fK9C0uXco+aKyWUzNwqeCGaaRNtE3qSck
	r0Q9V9th8DpffSGNvH4BHvFoNoT9mtkRYRUhkKiY+G
X-Received: by 2002:a17:90b:1d03:b0:3ac:4e18:238c with SMTP id 98e67ed59e1d1-3b1b0b49dd4mr10954257a91.49.1794870441471;
        Mon, 16 Nov 2026 15:07:21 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-28.dlp.protect.broadcom.com. [144.49.247.28])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b3ac14d2dbsm489339a91.8.2026.11.16.15.07.19
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2026 15:07:21 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1b53bfc9534so13252c88.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 15:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794870439; x=1795475239; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=d7QIkQGcuhgCwpwukZfMYl/m0eNiW9yDpQCv/4z6USA=;
        b=c+4QIZ8yt4OzogfHK5YPe5NvaKj197Ukmp2zvW0D8pGjF8sPZPwC4UcX2dMHWYgl9w
         CQTPqdTzuYIvdG9K1CbSFcac6J59uRZfuyemHxeebuCNRd1IAk0F9cQU8G9jP3gmh6UK
         Eu5SaOrzPoQkUyGuj2768Z6D1zw38vLSI6a8Q=
X-Forwarded-Encrypted: i=1; AL+hErEQhb2p3iK5O3nD5+By0Pjw4VD9RRf7hfBUu9ss++uP44YiHYwm0ronCP7cpvzZ6pRL9UPZAuO+/E0=@lists.infradead.org
X-Received: by 2002:a05:701a:8458:10b0:1b5:22fb:848d with SMTP id a92af1059eb24-1b522fb84d4mr6306503c88.16.1794870438541;
        Mon, 16 Nov 2026 15:07:18 -0800 (PST)
X-Received: by 2002:a05:701a:8458:10b0:1b5:22fb:848d with SMTP id a92af1059eb24-1b522fb84d4mr6306480c88.16.1794870437878;
        Mon, 16 Nov 2026 15:07:17 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5031918c7sm50516401c88.9.2026.11.16.15.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 15:07:17 -0800 (PST)
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
Subject: Re: [PATCH v4 4/6] ARM: dts: broadcom: Add the NSP SATA IDM registers
Date: Mon, 16 Nov 2026 15:07:15 -0800
Message-ID: <20261116230715.1489712-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-5-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com> <20261029212513.4126083-5-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_150722_572679_F3CCBAFF 
X-CRM114-Status: UNSURE (   9.62  )
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

On Thu, 29 Oct 2026 14:25:11 -0700, Florian Fainelli <florian.fainelli@broadcom.com> wrote:
> The NSP SATA description omits the IDM block at 0x1811e000, leaving the
> interface clock and core reset dependent on firmware initialization.
> 
> Supply the IDM as the third controller register region so ahci_brcm can
> perform the downstream clock/reset sequence. Extend the AXI bus range to
> cover the complete IDM aperture.
> 
> Fixes: 8dbcad020f2e ("ARM: dts: nsp: Add sata device tree entry")
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
