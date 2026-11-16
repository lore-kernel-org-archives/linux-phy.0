Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B353606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 10:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WwEPw+65;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uXkOgTHx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Qv31/t40wztf9YRsWAjvQuBRtEUf+7O/IqstpFB4AtY=; b=WwEPw+65Sx9jhZDj6Gs3V5OwsT
	0I/n51crh4sBMrS8y5zhjKIJOuECgzfrKnt7R2An/M/zlg5UI/drHI9IEeFT3Sfc0Ja0S9WN3mmfs
	r+WC25h3D4ZZCVUXgC3o29VnjBNl+1pGnLzTnts93TjbqR2Gx8G5ljkDTZ0jSpi6UwDYfqu1I9CFY
	hzOz4ShomLqn4jAjpYg1yNMzbljoQdwFtLbsnzpqKUPDaQ51EaYcWrd3OrMhNGHi4rEoPECf+Af70
	+DHfc8QuTOXgUiX+ZNCiM2/p2DXNZ9j1p1otOz/G656nNoEhIjn3eIja9FhquqSYc5L61cJdv0hFp
	Y4TK6BPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNa-000000022LZ-3F08;
	Mon, 16 Nov 2026 10:56:06 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNX-000000022Gm-2EcJ
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 10:56:04 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-8b4b9ba815bso12505037b3.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794826562; x=1795431362; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=EJkLT5+FbYsBkV6aiXjOdMACJbaO9v6pAiv+btB2ar8=;
        b=uXkOgTHxNv58Z03rQpUddCcol98iiPdcUXno3oYkrrFmQi59leYKsHKZ16dlwY5Xh0
         VtmKLqKu6Y3D/e8jb3eOw7bKApW/BkkjWC6K1QiCzGQyh6o72n9DWGDh3aAwW7XFam+n
         LAN4KHkZKgVzXrL8TDdcJHB5TSHYxkuF8fhjSZ2TR74zKs+kaK207BvJP85NXVYyJ1NV
         Zup6GCjnJ42K14M4CuVqoZNxArb9+fvDoc1nRu6fQgfDMsqLN5UaVjxW8Yhc3xUZn5X6
         dNtmY5hb/u20WTv68Yt96+C4MWcJ7rgSgfsOWgeBtRIVsbIVdZfiSsl8sMVmWinB1fPm
         4asw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794826562; x=1795431362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EJkLT5+FbYsBkV6aiXjOdMACJbaO9v6pAiv+btB2ar8=;
        b=JDXVVey7vCSRXmQ5wnFacASjfw/Degi32nIcLY/xNgshTaFQHUi50U8BE7IA/du508
         AvcxdJX815I1EJ6VnW/yNT126bxmLxWNYYtYGRs+7D3jwdbSGxlfdv4RsttBPgc9yuyj
         qI1bo7OiKCJqbwujeRFm/rBfC6prMDXcWrn7+c5pqRWg2DwUaGAaIPzSBL0KkBQmc8qr
         0eD1D5nBXM1HFx2/VIXrhahAZ/3Z3gnasaYHLGIl2IH92AF6JfHnU9+diDV/YEWHgoA2
         n/YXlZZ4kazQmsglnVPYIK23Z498I6JOvXdfr8tfJ2LQKFgnIWUgJDUM6++YFc5TvvlW
         FNCw==
X-Forwarded-Encrypted: i=1; AL+hErHlB+mWr24lj7XXmO0OWoEzILeVlPL1twFr2aY0c8IHLuynX7n/ks0QwoepmwOjYHRfFDvjdVl8uj8=@lists.infradead.org
X-Gm-Message-State: APuU4Z8zvHAkNHicNY+ZhdS8WvjzIjKWPq9CXxEimQ8LdqbV+ZqMy2oq
	gu7j6OdH/tssxzPzAFVkb5P0NUcLpiD4waComUu1zaGyVVFGRW3xnkVa
X-Gm-Gg: AZFdTZfkJXPgP4z4ipj0NjNHD+okA7f7Ea6XFVc9zQzDfkTPVayrZuux7RD9+KCU4pW
	xqEzk6TaVpReLw/nFeIijID8JjR3QW+1OFDu5MCixNnmu9G3scerxyKlVBQAT91dYaa+criKY3b
	xyoc+K3XsFilOq3jeIINCIIw63C1mG9hXFD4md4HumDiEudVMB/pnyEmY0vo8IsGIDqBIT9fMf3
	PatRXLLnRIKOF7pBGhjx+Kyp5B8PIIPHmvavtWzA94QOQi+ix/6i+WEWCnIeK1RzB6etNjDua3C
	vK0fD+pr4tanjmXCkBIvlSjUvxqABMYf2Ukr0YhqWjd98bLZ4BH/jNeSqWOGWL3xMbL7d4NmC+a
	OLnLJnE2jAjgM3CTcL14qqi54hDv0f1p3+8zeZH4AcK8v7HdH8IldGu7Eu0lXuk2kAsrX0Ayyo2
	T2mTa0wlKj+6saCnzaWdGn0ZLANLODwI2y82rit2TklCx4heQJ/L3zoY+SzNI7Z7uOJzKuc762X
	PDR+seTNS429HgCDY1NhBC2ZQb8aql31hS+QtqUqxUJoEc9CSOGpXc2qfEdh2ZYHdSLZKrgNYAu
	+ktJsYH6P2YZRLop/FeBK0YU2yi9Ta9o2+k/OxCVIh0rgSs11s2YM9rxHpfaAjJjN9bRDckkwJj
	WG+rIiIWytJrgiQydxLmbauNl0EVtxvcoXi4YX0u+Id/vtbHiRYaoU7+Vtg==
X-Received: by 2002:a05:690c:34c9:b0:8b4:c9b1:ba6b with SMTP id 00721157ae682-8b4c9b1c520mr26140997b3.23.1794826561834;
        Mon, 16 Nov 2026 02:56:01 -0800 (PST)
Received: from MaquinaLab.. ([2804:1b2:aa41:8a69:2b8b:32cb:351d:f30d])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b4aa7f1a0dsm82274987b3.1.2026.11.16.02.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 02:56:01 -0800 (PST)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: sun4i-usb: add the Allwinner A733 USB PHY
Date: Mon, 16 Nov 2026 07:55:42 -0300
Message-ID: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_025603_585421_030315C0 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This adds the A733 to the sun4i-usb PHY driver. It works with the D1
settings, except that the A733 gets SIDDQ cleared before the PHY reset
is released (patch 2). That made an intermittent USB1 enumeration
failure go away on my board.

I only have one Cubie A7Z, running a local DT, since there's no A733
dtsi upstream yet. Only USB1 is enabled in it, so PHY0 (the OTG port)
never went through the new order. The boots ran the same reorder on
top of 7.3-rc6, before I turned it into a per-SoC flag.

The numbers are in patch 2. The comparison inside the last run alone
(1/31 vs 0/60) isn't statistically significant, so it leans on the
earlier 3/40 too.

One question. The vendor BSP uses this order in common code, for every
SoC. I kept it per SoC because I can't test the others and the manual
says nothing about the order. Would you prefer it for all the SoCs that
clear PHY_CTL_SIDDQ (D1, H616, and A100/A523 through the D1 fallback),
or is a per-SoC flag fine?

Changes in v2:
- Reword the binding commit message into a single paragraph (Krzysztof)
- Rebase on phy/next and drop the dependency on Xu Rao's "phy:
  allwinner: sun4i-usb: disable the PHY2 PMU clock after SIDDQ setup".
  Patch 2 only overlaps with it in context.

v1: https://lore.kernel.org/all/20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com/

Vinicius

Vinicius Pedrosa (2):
  dt-bindings: phy: document Allwinner A733 USB-2.0 PHY
  phy: sun4i-usb: clear SIDDQ before the PHY reset on A733

 .../phy/allwinner,sun50i-a64-usb-phy.yaml     |  1 +
 drivers/phy/allwinner/phy-sun4i-usb.c         | 35 ++++++++++++++++---
 2 files changed, 31 insertions(+), 5 deletions(-)


base-commit: 6bdfbe223ed4735073c299a6645ebd3faac3f51f
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
