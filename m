Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EE9606A8B2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 00:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e9NWCE62;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DX0opxKE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mTl7OnL1hqfJsquP6X5PG5j8QNn6e5p3xwOiAMp4qeU=; b=e9NWCE62usBEa/bcPh07Eqb2Cv
	dxEuOJclLkTHIIVObA0lKLFxTokb7TEriHaZD99vL6jt6Ch6QYW+I5jhZXIVYn6z20lkxYMlOBLhv
	XXr84CMdLO2maXHzHjBRq7js6dOZhjz83MLk2qOJ9lDKxeFPSZLiQOaTPw5SYLHFVSPBYVc+sgsW3
	2GQ8nWx3wQpXndlCULtEeH9YTXTell2HUYc3rUThyKsEn66QfxamvNI3ZcHktDjQVjJG8XEantTtg
	fzk7VDaZUQySUNHJ4QnvHrA528eNSQs2iLexgqHQburLLhiEa3CM8O/6zuBUuVjisu7M4l0DaQRPI
	mOhRJEBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRfHI-0000000BKxq-3HDs;
	Fri, 13 Nov 2026 00:36:28 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRfHF-0000000BKvP-0pAS
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 00:36:27 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-48e09aa5264so133386f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 16:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794530183; x=1795134983; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y9drITw7mklCpATzJbjXqv85fDqlLK/bIxmCKSq+IOc=;
        b=DX0opxKEj0e11vitfAXR6d3Wp0W8NonXzSyL65zD84IZuvS1hDX+v1l5x7a7gwPsn9
         FModL3IFkdl9qoNkIXBhla6jlWqVILENXJvBwBgAvHrMg3M83ZFLbKUHMWaW3BK+M56W
         uS8WYtfn2A7t8RmqInKY1/4o7IdvNyHU0nNL1Sw6Fr9jE1VHE76qEwkoIT1oj83aLGFf
         at37Epl91+Rw268qNUW3bF8Gi0uNEkgyVVZvFdlHrhVOpWducJ2pIH2hWx9NFBXi58CY
         rWzcYkBEHUGMTe45Q+w8heQIMRJo/OP5MKgL8eHJAi2dAmKpvoOaVVS/p6uAufOZQngp
         /sgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794530183; x=1795134983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Y9drITw7mklCpATzJbjXqv85fDqlLK/bIxmCKSq+IOc=;
        b=L1QyWzFMdN7kegidkNvXy3iZ3fexezApJjpqf0oNy9M+vpnVwXICUNIdKYlnfTVIgp
         OxNXs5mqAt4xvvEa8nXpa6ts38H3jg27bVjCvlR0UCgv5RDH83lP+5CORRRica20qNSI
         Ebp7cNoaKRZWqm8fm60c5ktS7oIdS5dRkm1XJ+ekI7+RY3t0O7LLimA0hiN02fbAM9y/
         JJskxBv6dvaTYXoj8UYbXucOU1FwjFhir85h15Qlr28tVUhQBglXKMqG2pytnzRqAUcV
         0AcP17XPpo44dEs7jJX8QaloKQdWBk3uP6SmCq3b7ibrKVi/uLTY5saM42qXqP2lOrdF
         oSRw==
X-Forwarded-Encrypted: i=1; AL+hErEDEtm1+3ycj+cyM9GxoAR7TNzDGhJvGjVX/hf0clJXBsKzJgf4maTAJYYkp7ic4yyfdJbP46Zm0Hw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8uOPiP7//V+/SvVB8hyTgjoKbs09xXWOFpwIjuIufsgMVA86gR
	vR9eMv462LrUJItDoVLDccDw4TIQgcZximvfvZlvKzZ8ZbR5U+38qhkh
X-Gm-Gg: AYBFou0w+9jX2n5joGFYPZvktIfAW585+uhFZh7CFAZsBd/4sNQnNUl7Wj0fn/Fgwka
	fA1IWpH9VJ8s/S/x62zmeZQEg6r4Qj2L7/vB/ZrLQanW0MAPMXSXR2pfM6xwo6HFwjgx/4sT9/6
	2Pc1dxsTgA8JpaZhX7RsqnlpX3CQcv+m40Fm6juswjyc9x7ZR8+Ueyem6Kjeqq9//Aw1ZPQi+wp
	ukbwWAqNCYcS/3eRo+C01p5gT2OyA+ndp376hZ6/KaaywWrDomVbhOVPQyQgafJF49aTCzhzKfg
	rPSb0rDbN+QjQwUxuYEO8yynhMJUgfKPrnsbxilf2JJQurUL01Fi3k6HaN8Jgf98j1Fpd0gOLXL
	LwEoWatnhL6YmLMS0C3HkU8eifFWU6uAJnMN+qH5SpIETfv4CcQEyaE1DBbrw2T3NgxgsU92qfU
	he35bMWAs9O8/R3bc6cMrn5J6TVADdcNMnPL+RUpNCjcDrkZ41nIxuPJk/flbyfdfeOXugNXqtZ
	HEk0mVxk6ompxCObjRWLMF7lGKIVR0nwyxarauWWh602oCsG7a7P3u5M0rKiv/RFhirb3P7oENn
	cKJybVPjbQAxnUPFZYEbcPHLV3P1zRkydZ7OxQjybPqlxbNwQ+dr5Y94ajRgKZ7YYH5tMy/0Bai
	JvnxVdJJosixeLmSQUK2MgQSEfXFGWZQX84S1Bz3xvsGchv9R6dvHA6/quTVl5OIRsrQtbLn6/p
	geGhm44Uonks7QEU20
X-Received: by 2002:a05:600c:6208:b0:4a4:fc8c:cfd9 with SMTP id 5b1f17b1804b1-4bb55a66467mr17360805e9.25.1794530183276;
        Thu, 12 Nov 2026 16:36:23 -0800 (PST)
Received: from navid-pc ([2a01:4b00:a856:6220::a11])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e2538b9sm188421765e9.1.2026.11.12.16.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 16:36:22 -0800 (PST)
From: Navid Ghahremani <ghahramani.navid@gmail.com>
To: Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	arnd@arndb.de,
	stefandoesinger@gmail.com,
	krzk@kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 11/24] phy: zte: Add ZTE ZX279128S PCIe PHY driver
Date: Fri, 13 Nov 2026 00:36:22 +0000
Message-ID: <20261113003622.3663361-1-ghahramani.navid@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261106101307.3936492-2-isasmendi.agus@gmail.com>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com> <20261014072109.1759502-12-ghahramani.navid@gmail.com> <20261106101307.3936492-2-isasmendi.agus@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_163625_288231_7B5D5222 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Agustin,

Agustin Santiago wrote:
> On my unit both read back 0 after boot: there seems to be no register
> at 0x1b0/0x1b4 in the top CRM. The vendor kernel writes these two
> values into the port 1 controller's "ctrl" window instead
> (0x09600000 + 0x1b4, then + 0x1b0); with this series those read
> 0x00203c78 / 0x0c46c24a. The link trains anyway (the MT7916 enumerates
> at 2.5 GT/s), so it may only matter for signal margin, but as written
> the writes have no effect.

You are right, thank you. I checked the stock kernel and it maps
0x09600000 for port 1 and writes both values there. My first driver
took that mapping for the top CRM and v2 kept the mistake. The PCIe
series will write them to the port 1 ctrl window.

Best regards,
Navid

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
