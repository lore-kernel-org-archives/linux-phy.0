Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 297F1CD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 12:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnukIyS/Lzv883trdCZ6lRHDGT0gNq7ggN9nkoZWUAg=; b=c/GkwG667p8vkb
	eOTWiSvEz5gak9+/xXZKxMl0STl92phlG/TTqWS6fRX5kK7YXn4sBJvYIT5UR++CmYCA7ExC3ctCU
	KyHr9y0nGt+GON5GUfgg57Ez2F0vPm79yMcHu1hskBC7AK6nGJs+NcWVaty32nGsEE2asFL8RSsDA
	w0ip16uv9ZP8kMhK7tgZvy2O3ff3lGN/if5GXo+Bw8GJySscfyZFtlS9w9NGfRg+lPvrfWkE4pUrD
	/HVinsst9ugE8kYDlM8Q1WrG4HtYRbopRO+E2nybxkMZcj8JYtZtjN9L3FbTXzmqjk4mdNhisW87s
	IbjH5QuiI9SpqpPqv44Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrSV-00000008IkJ-3lNR;
	Fri, 15 May 2026 12:16:03 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNrST-00000008Ijl-2v1o
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 12:16:03 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-44985f4ab0fso5332898f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 05:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778847360; x=1779452160; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mZiI1XugEd12IRDZ4O5hUJueT5qAnNWt069Fm2GMds=;
        b=r2LwKIidyqqv4WdVj8VAqZDZFgp+SuOsFJjsJZnvRD7tTBhgjEmd+lmz6GeZ4TOcE5
         UfRjXID7SXnWYD5CHTibxzQDhC71oQnky0maXXRnMdJ2S6U2zj+F32e5lbC32N1ow6q9
         tiRH7Xr62cPSCDQ9rJH7IvBUB+8cuFirjhfK3tqrQlAq7bmCMQtVZxskw28PkslD9VzH
         ncBeWY33Nm/k9hssZ9JVu4UMKJbmJ2edOiQym50emIoTzlZcRTdDxiyf57D7XHOfVCCE
         vHRmlT3axRJHyGYf4i36Pw1KmDU1eTS1/BbrohR/+2x7/kyE3DnhG1sL6EVG7LYX4KJe
         rEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778847360; x=1779452160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6mZiI1XugEd12IRDZ4O5hUJueT5qAnNWt069Fm2GMds=;
        b=QoDl6UJWBuzZxjX++Ky0i+o5SLj98dZS8iRfyyyQQ2edgX+Up8TG5/g1XF7zUILTwE
         eamlLn3/GM0MJCt9tnX3SYQeRFfbScfl2kp6cKto0UqvZqh4D7o7WPkaosTJ8w/O5buG
         ctKpuabhruccnrD2CIjbkpn+u73YjLQfddOjGvspJNvrV4FzFvzOARa4Ln8YJekP2oXd
         T9pwlOyYmKxOlbZFDyz850hGcNdWIFtOjK6k/Mf/UqPr2IPZvtiX5xoGCRuHRhqhJnqU
         USBfXvXJtacMaOwy4im+HgO/vOzklXRd9uv9bh69gNuqEPG7L9jWuLjJJxpFoyiBsjAl
         i2xA==
X-Forwarded-Encrypted: i=1; AFNElJ/Hv86lGlYjM5Bctqdl7zQZuZ9ufCw0yJ4vyrgFylQwvBPJulJhDHXRaIJenTAbFPPCVn1CCfAHZ3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzmhmJ9Ji7GV17U3SU9dcwwBoH3eFRfaSi5hCvwa9KIByuk4oW
	3QCpZQdx8qt6H6uGvvOyaeNwx9GFLlnp4Xi5WfhM1byP2FWtHOl33zVMyv9Je7hA
X-Gm-Gg: Acq92OFOUliC7RdsMZImDbxyC0RmA/6oUX7BdeVNS7BiF0kUlWp8CXSw/VJ1iUHLCER
	K8sAREvqQrBzr+tpuJFnfzTzXRQWoZkFw2yGsWR2N8hrHN9B5y/ChayXI9OxtYTHtzRpRXeYa1/
	z3b9ppyukWhUmefxYaaEYpndMyOqmaGca6D6b+XslEbfCycbcnaigOIRyqmlGedaNNN73kkApKD
	K1OByORxAGnzN+hHyQ9EOzH3HmzxRvKVHWBW4zfOrjBj/5Es/DTayLVH9XHyEz9GT1jPXcul7S2
	82yUaw3txIyV/bJH9quijSmxTTeNrymnMZIJ3AuLHYLuZSpFUXPuFgJiNaa92aj8rLEKI0r8ii5
	MX4kBELO8kDkwwU6O6WQOo2KAFOQq8SCptZoMHD1peTW8h91ZH5ifCM2l4XiUdBOGstICMBxKWn
	+jiO/loS8uB5MqB4vj2o2zOwa2O6cFLe66OKaqXI3/XKK1KlXpzP0Xwe8=
X-Received: by 2002:a05:6000:2288:b0:43d:781d:37b9 with SMTP id ffacd0b85a97d-45e5c5ae8f2mr4798748f8f.42.1778847359596;
        Fri, 15 May 2026 05:15:59 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45d9ec3b18fsm13728226f8f.11.2026.05.15.05.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 05:15:59 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: bjorn@mork.no,
	andrew@lunn.ch,
	linux-phy@lists.infradead.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: Re: [PATCH] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge before assuming MDIO_I2C_ROLLBALL
Date: Fri, 15 May 2026 14:15:57 +0200
Message-ID: <20260515121557.17925-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260515121108.17792-1-petr.wozniak@gmail.com>
References: <20260515121108.17792-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_051601_743974_D6B0C6FF 
X-CRM114-Status: UNSURE (   6.32  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

UGxlYXNlIGRpc3JlZ2FyZCB0aGlzIHBhdGNoIOKAlCBpdCBpcyBhIGR1cGxpY2F0ZSBvZjoKCiAg
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjYwNTE1MTE1NTI3LjE3MjQxLTEtcGV0
ci53b3puaWFrQGdtYWlsLmNvbS8KClRoZSBvcmlnaW5hbCB3YXMgc2VudCB0byBsaW51eC1uZXRk
ZXZAdmdlci5rZXJuZWwub3JnIGFuZCBJIHJlY2VpdmVkIGEKYm91bmNlIG5vdGlmaWNhdGlvbi4g
SSBpbmNvcnJlY3RseSBhc3N1bWVkIGRlbGl2ZXJ5IGhhZCBmYWlsZWQgYW5kCnJlc2VudC4gVGhl
IG9yaWdpbmFsIGRpZCByZWFjaCB0aGUgbGlzdC4KClNvcnJ5IGZvciB0aGUgbm9pc2UuCgpQZXRy
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
