Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60886606A326
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 23:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=spFUpfu3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cQguBENL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6B6RaGvMs3JdotCQPbAFSd2DIMMu3oP4kVVFL3obmF0=; b=spFUpfu3zv02EYVcmkpCPHbcNB
	SiLnZgOuHSYk4rjT1W6NoDAmfihaNQjIWCtNAxanvFf7Xr1JQcBMkOhBEEFCjdZzDHmk/7Y4tvuZv
	ErAb9yaV2OBgNAOC6UqlBiDih4uyNdl+6adYGDjmMiYgT2IbFI6IB5QDBPOcYq8rgGW2ih8kukbP4
	8dzagpkZQ95+Uxemr6dkz938n51bXeDUDFOuB68F4T7Ts2U0EVydsanM8zy2nHHARMRjpVa+1TI95
	TC9FfKCkU3tfYa6rVTrqQhY+1Qgr8R9J/c72t2Y0TodZ9O5/DevpWyuP7xM404e3+VMhv8unCfuN9
	sPq1Ui1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdGb-000000059UG-3hjq;
	Mon, 23 Nov 2026 23:16:09 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdGP-000000059Qg-1D5o
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 23:16:03 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4bb702a7548so31319565e9.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795475754; x=1796080554; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/sGiRa42r1FyIucsWxDt+Wy08NdPZogFnK1cktUjeHk=;
        b=cQguBENLXwVZRk9ZNYAWBQ7BGYMmbwZdiFaIwpXeUxIATe8XXgzv4lgBYY9CTfB36R
         XfR6HE5+1/lJKmEyfFQdywwzTHSGxg65OAGcxq2Aox03j1GX2sNRVXqfXnAOIRrB0Wdm
         QlkT38VEcpuMoisirFh9xPUZhq+5hnzM2rtLQv7os/HR/Yhf3F5iB8OeA2ae/vD+0E0K
         1zSifx0A/AmaLSq3uFpMytkAb6JW9IBnGjPk0qDxYvkaA/ZVv1AobaSrTP7bP5nXVZz2
         H4LTb9umIEuX0Vs1s9Y4vQq68xSPtIVIx182nylmK87OPQ0jON4n6viwmK+4uZiYiHfq
         b6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795475754; x=1796080554;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/sGiRa42r1FyIucsWxDt+Wy08NdPZogFnK1cktUjeHk=;
        b=O03zP/zP/0R637Thb692YyWZygSd/3iNbmxF90GTGgLaMif1vIl2vPNNLp660Droq3
         Z9IVzj+dU9NxJ+uaIEmeVCgkJqd0aTDtZ/GIh9KrswltBqFc4rCCVBrEdtsv5v1J+lwR
         4Z3etYnWsazm6+thafzvWvH19byKZBl5kfS5BLymfa/N5U3mdWOnvqh5BT16EN+ymcrQ
         14sEGKoF82FlZfNAWM1LrEWRib6V9DdUzE3zkSaYT6PQpXVJWOTXruL/zVGjhI+HzJtV
         exkLKg2dEIncHy5na3nQu5obOjb+inxghlMylwHsTyd383QoUNQY4ZaaVTY1ZoQmJ6Il
         eMQg==
X-Forwarded-Encrypted: i=1; AL+hErEzGWcZDMqnCJ6TRO28UUXxaMoPpz+bCHkoBykpFgwhFFKFsz4J2WZhTwc+d4kHid2E5XuFcuF75HI=@lists.infradead.org
X-Gm-Message-State: APuU4Z+DTenWNXkKh6ro5WFnwI0piM2sV83Wp40yeEKlWePAGn7SVB/6
	/ZSrAhhs1JBzlKRhTV+q24MU30knnCI0/Rc/GYVsCBtizriqFrzq+Mqa
X-Gm-Gg: AZFdTZdt9VMcC10t+OnfUnQiRpwC0Xq3KU0DoN1oVwNTLr/UKS66F5S1epeTfX6TgZB
	u8ou1y7bDuyROpB4lGB1v+1MyxziRfC/TRK3rL1WJUsJpgQImq6iNF5wOnod1lSACExrtFnMFCi
	81M2ojog7RFe2RIZxxycAcY5zZNOdYn8jmU8BMF3oUkyvRDFc9Si3sCvpMourjdoxuPUpfukIOz
	0uxZEaypo0rs2A0mzLh5DX3F0AvOkywxrRXjdPsTuzVJ/YPld/Hjyt7RtvjaFnkHaNh32+9DLje
	Pvt7UWhDVa9KN9DpUlhwWV5vu32DgB55jX63Gf6bIrxTRQe2ZeL7WuG0rxvwjA8E+kTWMRRgZbD
	WHFrLrfhjGDlyiTPXzn60BzXMWE4XZ6ol3WBB9Lw/nnUVVXxvYxq3efzigo6ZqWLgdbR0XZ+SvQ
	qeAlHU5NM/m70vYlRK3tqKybVo2Nd35C/0ygY2Uj1ZxOTWsZIsXVKZkGyirxTHOZh4ORHC4T/ka
	ePpnEVE4nE8+2cPx6L/RiBR68uZU7+WOeVD66p+YGpwaMrtwzajtZMMxJ38mz0TiAT7bYkQ3paF
	iSOutntZk5RArVpBulsxXoOuiz5/EAnEzZ5ZjUFe1GDNl7hdiG9IUVU=
X-Received: by 2002:a05:600c:46cc:b0:4bb:6f41:399f with SMTP id 5b1f17b1804b1-4bb888236a3mr269607585e9.24.1795475753577;
        Mon, 23 Nov 2026 15:15:53 -0800 (PST)
Received: from [127.0.1.1] (ip-024-180.users.dtel.ru. [91.210.24.180])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb90655f5asm214620235e9.1.2026.11.23.15.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 15:15:52 -0800 (PST)
From: Fil Dunsky <filipp.dunsky@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, 	Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, 	Jingoo Han <jingoohan1@gmail.com>,
 	Lorenzo Pieralisi <lpieralisi@kernel.org>,
 	Krzysztof Wilczynski <kwilczynski@kernel.org>,
 	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 	Brian Masney <bmasney+clk@redhat.com>,
 	Jerome Brunet <jbrunet+clk@baylibre.com>,
 	Neil Armstrong <neil.armstrong@linaro.org>,
 	Krzysztof Kozlowski <krzk+dt@kernel.org>,
 	Conor Dooley <conor+dt@kernel.org>, 	Philipp Zabel <p.zabel@pengutronix.de>,
 linux-pci@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, 	linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/8] soc: cortina: Add CS7542 PCIe control, SerDes and
  host support
Date: Mon, 23 Nov 2026 23:15:46 +0000
Message-ID: <179547574633.3.10816077515932240445@gmail.com>
In-Reply-To: <20261123225447.GA1119216@bhelgaas>
References: <20261123-b4-cs7542-pcie-v2-0-f589a9cd0bef@gmail.com>
 <20261123225447.GA1119216@bhelgaas>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_151559_431904_9C3C71C7 
X-CRM114-Status: UNSURE (   6.27  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Understood, sorry for the rapid reroll. I will wait a few days between
PCIe revisions and collect the review before sending the next version.
I will use the meantime to address your comments and test the changes
on Almond+.

Thanks,
Fil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
