Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB9ECD6E74
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 05:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93mxwdxRvvb0axBIAMmsYUri2xB2u8/uiJqtfiMYvwY=; b=uiI3+I4Pz3kEuU
	V6qO/y+huPSD6v0+KRdNEm83D0cZv17mucz/ceYiL5nThrcKzVMgz1A+ILMpfphJtDEkuHjpJN+TM
	TToxxNxiX0k0TcZngw2bsdKRzKK0g1dO8DG9XIhzzItFySsnAl4uqTJWUiddpZ2JIHjvfhc324MrH
	EVyrgQ7AFSB5LnRgMj11v/yRwnt0DCvRAOb6tjiWwxtPYzVBvxYMzGkPTeSm/yfhHHJJY8wsO+7br
	f6P+3uA4qKOtnts22pFP7v2UmBu+3pwjKbWHycoH/wwD/s6GjYYI/ApLZyWSSVVC1I2+PXzCE4E2E
	uMCFB4NStPi1uiQsMMTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN95-000000006hk-3sRn;
	Fri, 05 Jun 2026 05:31:03 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN93-000000006hL-2p1A
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 05:31:03 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso15296295e9.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 22:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780637460; x=1781242260; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vuvdhqAuePBbJyQdMyyPcU8SDSteetKe1IJhuqarnPk=;
        b=AsmsCDhw+GD2zezPY5EeOf5PTSHxWrC8GL25aBmiv6w0zh32+9qvNBLYMxEs7XEc5E
         +Yi7t6O20No2UVkj75h8ZL71UeQFupNzeeQbs9+FDvtipDNxZMqsjrxn0EDamECG2+ww
         RzobwxXzJzP3+lyXA1Vwp9h03DdVGAs5FQCt/TNzrU1nkKM1JlP6NWEDFZUriQDGm94V
         3iKftWT3w9sB62YzhvuWvpARQ6r7UCXQrdcqsR1N5iIDbjWy3BsZoRah6nI8x2V1ePEd
         6pWITxD+oEpGZPU6+/FiJdGJzEMJngPecHC9OtYwADoyP/nZu/8eOf5UjdgGlkgIYnxB
         g8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780637460; x=1781242260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vuvdhqAuePBbJyQdMyyPcU8SDSteetKe1IJhuqarnPk=;
        b=FM0462RJKAooL80Diratc8pKJGqy6/mIdwhxhdOamBsljIzQoAJs+Mka5Jmzkq9CnE
         0RWFylu7vhY89a/Wo73ubve34hZ//CCb5+Vd78DXDR68pnpKgtqZyAyE6n8emLhQnLPx
         V84OqCRzG6XyqGsP5ryW9Wb9uOJ8ED4cBhD0OIuoW0xd5M+PVYoPiE0/2qWDNTrR5Dgb
         YL6CO/6rZrRB2QeRa5UOZHxF1Cx0n1Zrg+ucStu0WiCYkx1OQwQldSOrC4OujYZTgGIG
         GoFl08y3Yw/3NAonCAmmLqznMgwZacYhMrl8Exgqj06uXhPwHgvC6xQDnlJ7/Xuajmc5
         NL9w==
X-Forwarded-Encrypted: i=1; AFNElJ8Xxwxg6JnLhF62w0pJfvS0wkkhOo0eFgVoB9KSqZzSsh6yG6Abr3Q/XPvQxgMMvwpbsC6koVe5Nvc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzdenia53RCQqaToONRlpbkd0F/Nbc5+PzH6ff43tyGQKdX7JSf
	e9dHSQoTY0higR0Q7aYGgXYFRl4Gi5IoHtnk1hXnV+Ez3mpd34R97ZMU
X-Gm-Gg: Acq92OE9vHKkxUD8VoFdulj+IFa3sDH3FgYKYzvVg86Vf9fBz5oprChr+UmdFs9io4y
	dfFXwqesM2bv1NJ9bLX9L8nax3P91rKAB1HuSNfU4iAvaBn5TecHlaMolNUmipPfA+YeDI6FSqW
	DHBIpmP6uZNQtpohmYFvVhgzTQpwF7WWFmzQuUmfi3snWQHY/IO52zqbsml6UIqQY2RcbCZr5Ws
	sC/mxs0VQffkGHO5RJGVACWBDYr8eZZaop9Xg9hhp2ZMTO0MeAsBv6AWb87U2jBtmZhggcbUh8t
	XI0EIoAl0nq+rMh1mnHIRaZGg+AhUSB4Y8A/23yidSfv01ClEZFUBYMlmorPHdCExLObluCZt1m
	5e/VrhQCur9v0zjPdUFBIoLz8NY3/RsjkXcD8MHmEuqZA7oVlPBz/UnP683Hw9Z0r1Wko6/TIOx
	aBR1atWQwspjyF6v4igxDgKzJj3jL6d7EFhMyWyaeAv708EI2IBqb8/X1KxS5OqJ0bt/00H7p2D
	7PPqC024py6ltwVZ79BIfn3yudo
X-Received: by 2002:a05:600c:4e09:b0:488:9bf8:7f17 with SMTP id 5b1f17b1804b1-490c25acd18mr28114225e9.14.1780637459481;
        Thu, 04 Jun 2026 22:30:59 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc413541sm128414495e9.14.2026.06.04.22.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 22:30:59 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: kuba@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH v2 net-next] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Fri,  5 Jun 2026 07:30:56 +0200
Message-ID: <20260605053056.1977-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260604181207.17468-1-petr.wozniak@gmail.com>
References: <20260604181207.17468-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_223101_771854_48E2112E 
X-CRM114-Status: GOOD (  19.14  )
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

Y29tbWl0IDhmZTEyNTg5MmY0MCAoIm5ldDogcGh5OiBzZnA6IHByb2JlIGZvciBSb2xsQmFsbCBJ
MkMtdG8tTURJTwpicmlkZ2UgaW4gbWRpby1pMmMiKSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lvbjog
dGhlIFJvbGxCYWxsIEkyQy10by1NRElPCmJyaWRnZSBpcyBub3QgeWV0IHJlYWR5IHRvIHJlc3Bv
bmQgdG8gQ01EX1JFQUQvQ01EX0RPTkUgY3ljbGVzIHdoZW4Kc2ZwX3NtX2FkZF9tZGlvX2J1cygp
IHJ1bnMgaW4gU0ZQX1NfSU5JVC4gIFRoZSAyMDAgbXMgcHJvYmUgdGltZXMgb3V0LAppMmNfbWlp
X3Byb2JlX3JvbGxiYWxsKCkgcmV0dXJucyAtRU5PREVWLCBhbmQgc2ZwX3NtX2FkZF9tZGlvX2J1
cygpCnNldHMgbWRpb19wcm90b2NvbCA9IE1ESU9fSTJDX05PTkUuICBCeSB0aGUgdGltZSBzZnBf
c21fcHJvYmVfZm9yX3BoeSgpCnJ1bnMgKHVwIHRvIH4xNyBzIGxhdGVyIG9uIGFmZmVjdGVkIGhh
cmR3YXJlKSwgdGhlIGJyaWRnZSBpcyBmdWxseQppbml0aWFsaXplZCDigJQgYnV0IFBIWSBwcm9i
aW5nIGlzIHNraXBwZWQgYmVjYXVzZSB0aGUgcHJvdG9jb2wgaGFzCmFscmVhZHkgYmVlbiBjaGFu
Z2VkIHRvIE5PTkUuCgpUaGlzIGFmZmVjdHMgYm90aCBtb2R1bGVzIGluc2VydGVkIGJlZm9yZSBi
b290IGFuZCBob3RwbHVnZ2VkIG1vZHVsZXMgb24KaGFyZHdhcmUgd2hlcmUgYnJpZGdlIGluaXRp
YWxpemF0aW9uIGV4Y2VlZHMgdGhlIDIwMCBtcyBwcm9iZSB3aW5kb3cKKGNvbmZpcm1lZDogRkxZ
UFJPIFNGUC0xMEdULUNTLTMwTSB3aXRoIEFxdWFudGlhIEFRUjExM0MsIGhvdHBsdWdnZWQpLgoK
TW92ZSB0aGUgcHJvYmUgZnJvbSBpMmNfbWlpX2luaXRfcm9sbGJhbGwoKSDigJQgY2FsbGVkIGF0
IGJ1cy1jcmVhdGlvbgp0aW1lIOKAlCB0byBzZnBfc21fcHJvYmVfZm9yX3BoeSgpIGluIHNmcC5j
LCB3aGVyZSBpdCBydW5zIGFmdGVyIHRoZSBTRlAKc3RhdGUgbWFjaGluZSdzIG1vZHVsZSBpbml0
aWFsaXphdGlvbiBkZWxheXMuICBFeHBvcnQgdGhlIHByb2JlIGZ1bmN0aW9uCmFzIG1kaW9faTJj
X3Byb2JlX3JvbGxiYWxsKCkgc28gc2ZwLmMgY2FuIGNhbGwgaXQuCgpGb3IgUlRMODI2MUJFLWJh
c2VkIG1vZHVsZXM6IHRoZSBwcm9iZSBjb3JyZWN0bHkgcmV0dXJucyAtRU5PREVWIGF0IFBIWQpk
aXNjb3ZlcnkgdGltZSwgY2F1c2luZyBzZnBfc21fcHJvYmVfZm9yX3BoeSgpIHRvIGRlc3Ryb3kg
dGhlIE1ESU8gYnVzCmFuZCBzZXQgTURJT19JMkNfTk9ORSDigJQgZWxpbWluYXRpbmcgdGhlIDUr
IG1pbnV0ZSBQSFkgcHJvYmUgcmV0cnkgbG9vcC4KCkZvciBnZW51aW5lIFJvbGxCYWxsIG1vZHVs
ZXMgKGUuZy4gRkxZUFJPIFNGUC0xMEdULUNTLTMwTSB3aXRoIEFxdWFudGlhCkFRUjExM0MpOiB0
aGUgcHJvYmUgbm93IHJ1bnMgYWZ0ZXIgaW5pdGlhbGl6YXRpb24gaXMgY29tcGxldGUgYW5kCmNv
cnJlY3RseSByZXR1cm5zIDAg4oCUIFBIWSBkZXRlY3Rpb24gcHJvY2VlZHMgbm9ybWFsbHkuCgpS
ZXBvcnRlZC1ieTogQWxla3NhbmRlciBCYWprb3dza2kgPG9sZWsyQHdwLnBsPgpGaXhlczogOGZl
MTI1ODkyZjQwICgibmV0OiBwaHk6IHNmcDogcHJvYmUgZm9yIFJvbGxCYWxsIEkyQy10by1NRElP
IGJyaWRnZSBpbiBtZGlvLWkyYyIpClNpZ25lZC1vZmYtYnk6IFBldHIgV296bmlhayA8cGV0ci53
b3puaWFrQGdtYWlsLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6CiAtIEdlbmVyYWxpemUgc2NvcGU6
IHJlZ3Jlc3Npb24gYWZmZWN0cyBib3RoIGJvb3QtaW5zZXJ0ZWQgYW5kIGhvdHBsdWdnZWQKICAg
bW9kdWxlcyBvbiBoYXJkd2FyZSB3aGVyZSBicmlkZ2UgaW5pdCBleGNlZWRzIDIwMCBtczsgQWxl
a3NhbmRlcgogICBCYWprb3dza2kgY29uZmlybWVkIEZMWVBSTyBTRlAtMTBHVC1DUy0zME0gLyBB
UVIxMTNDIGJyb2tlbiBldmVuCiAgIHdoZW4gaG90cGx1Z2dlZAogLSBDb3JyZWN0IHN0YXRlIG1h
Y2hpbmUgZGVzY3JpcHRpb246IHByb2JlIHJ1bnMgaW4gU0ZQX1NfSU5JVCAod2hpY2gKICAgZm9s
bG93cyBTRlBfU19XQUlUKSwgbm90ICJiZWZvcmUgaW5pdGlhbGl6YXRpb24gZGVsYXlzIiAoSmFu
IEhvZmZtYW5uKQogLSBObyBjb2RlIGNoYW5nZXMgZnJvbSB2MQoKIGRyaXZlcnMvbmV0L21kaW8v
bWRpby1pMmMuYyAgIHwgMTggKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9waHkvc2Zw
LmMgICAgICAgICB8IDE4ICsrKysrKysrKysrKy0tLS0tLQogaW5jbHVkZS9saW51eC9tZGlvL21k
aW8taTJjLmggfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIwIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L21kaW8vbWRpby1pMmMuYyBiL2Ry
aXZlcnMvbmV0L21kaW8vbWRpby1pMmMuYwotLS0gYS9kcml2ZXJzL25ldC9tZGlvL21kaW8taTJj
LmMKKysrIGIvZHJpdmVycy9uZXQvbWRpby9tZGlvLWkyYy5jCkBAIC0zNTIsNyArMzUyLDcgQEAK
IAlyZXR1cm4gMDsKIH0KCi1zdGF0aWMgaW50IGkyY19taWlfcHJvYmVfcm9sbGJhbGwoc3RydWN0
IGkyY19hZGFwdGVyICppMmMpCitpbnQgbWRpb19pMmNfcHJvYmVfcm9sbGJhbGwoc3RydWN0IGky
Y19hZGFwdGVyICppMmMpCiB7CiAJdTggZGF0YV9idWZbXSA9IHsgUk9MTEJBTExfREFUQV9BRERS
LCAweDAxLCAweDAwLCAweDAwIH07CiAJdTggY21kX2J1ZltdICA9IHsgUk9MTEJBTExfQ01EX0FE
RFIsIFJPTExCQUxMX0NNRF9SRUFEIH07CkBAIC0zOTcsOSArMzk3LDExIEBACgogCXJldHVybiAt
RU5PREVWOwogfQorRVhQT1JUX1NZTUJPTF9HUEwobWRpb19pMmNfcHJvYmVfcm9sbGJhbGwpOwoK
IHN0YXRpYyBpbnQgaTJjX21paV9pbml0X3JvbGxiYWxsKHN0cnVjdCBpMmNfYWRhcHRlciAqaTJj
KQogeworCS8qIFNlbmQgdGhlIFJvbGxCYWxsIHVubG9jayBwYXNzd29yZDsgYnJpZGdlIHByZXNl
bmNlIGlzIHZlcmlmaWVkCisJICogbGF0ZXIsIGluIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCksIGFm
dGVyIG1vZHVsZSBpbml0aWFsaXphdGlvbi4gKi8KIAlzdHJ1Y3QgaTJjX21zZyBtc2c7CiAJdTgg
cHdbNV07CiAJaW50IHJldDsKQEAgLTQxOSw3ICs0MjEsNyBAQAogCWlmIChyZXQgIT0gMSkKIAkJ
cmV0dXJuIC1FSU87CgotCXJldHVybiBpMmNfbWlpX3Byb2JlX3JvbGxiYWxsKGkyYyk7CisJcmV0
dXJuIDA7CiB9Cgogc3RydWN0IG1paV9idXMgKm1kaW9faTJjX2FsbG9jKHN0cnVjdCBkZXZpY2Ug
KnBhcmVudCwgc3RydWN0IGkyY19hZGFwdGVyICppMmMsCkBAIC00NDQsMTIgKzQ0Niw4IEBACiAJ
Y2FzZSBNRElPX0kyQ19ST0xMQkFMTDoKIAkJcmV0ID0gaTJjX21paV9pbml0X3JvbGxiYWxsKGky
Yyk7CiAJCWlmIChyZXQgPCAwKSB7Ci0JCQlpZiAocmV0ICE9IC1FTk9ERVYpCi0JCQkJZGV2X2Vy
cihwYXJlbnQsCi0JCQkJCSJDYW5ub3QgaW5pdGlhbGl6ZSBSb2xsQmFsbCBNRElPIEkyQyBwcm90
b2NvbDogJWRcbiIsCi0JCQkJCXJldCk7Ci0JCQkvKiAtRU5PREVWIHByb3BhZ2F0ZXMgdG8gY2Fs
bGVyOiBubyBicmlkZ2UgcHJlc2VudCwKLQkJCSAqIFBIWSBwcm9iaW5nIHNob3VsZCBiZSBza2lw
cGVkIGZvciB0aGlzIG1vZHVsZS4gKi8KKwkJCWRldl9lcnIocGFyZW50LAorCQkJCSJDYW5ub3Qg
aW5pdGlhbGl6ZSBSb2xsQmFsbCBNRElPIEkyQyBwcm90b2NvbDogJWRcbiIsCisJCQkJcmV0KTsK
IAkJCW1kaW9idXNfZnJlZShtaWkpOwogCQkJcmV0dXJuIEVSUl9QVFIocmV0KTsKIAkJfQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L3NmcC5jIGIvZHJpdmVycy9uZXQvcGh5L3NmcC5jCi0t
LSBhL2RyaXZlcnMvbmV0L3BoeS9zZnAuYworKysgYi9kcml2ZXJzL25ldC9waHkvc2ZwLmMKQEAg
LTIwMjgsMTcgKzIwMjgsOCBAQCBzdGF0aWMgaW50IHNmcF9zbV9hZGRfbWRpb19idXMoc3RydWN0
IHNmcCAqc2ZwKQogCWRldl9pbmZvKHNmcC0+ZGV2LCAicHJvYmluZyBwaHkgZGV2aWNlIHRocm91
Z2ggdGhlIFslc10gcHJvdG9jb2xcbiIsCiAJCSBtZGlvX2kyY19wcm90b190eXBlKHNmcC0+bWRp
b19wcm90b2NvbCkpOwoKLQlpbnQgcmV0OwotCiAJaWYgKHNmcC0+bWRpb19wcm90b2NvbCA9PSBN
RElPX0kyQ19OT05FKQogCQlyZXR1cm4gMDsKCi0JcmV0ID0gc2ZwX2kyY19tZGlvYnVzX2NyZWF0
ZShzZnApOwotCWlmIChyZXQgPT0gLUVOT0RFVikgewotCQkvKiBQcm9iZSBjb25maXJtZWQgbm8g
YnJpZGdlIHByZXNlbnQ7IHNraXAgUEhZIGRpc2NvdmVyeS4gKi8KLQkJc2ZwLT5tZGlvX3Byb3Rv
Y29sID0gTURJT19JMkNfTk9ORTsKLQkJcmV0dXJuIDA7Ci0JfQotCXJldHVybiByZXQ7CisJcmV0
dXJuIHNmcF9pMmNfbWRpb2J1c19jcmVhdGUoc2ZwKTsKIH0KCiAvKiBQcm9iZSBhIFNGUCBmb3Ig
YSBQSFkgZGV2aWNlIGlmIHRoZSBtb2R1bGUgc3VwcG9ydHMgY29wcGVyIC0gdGhlIFBIWQpAQCAt
MjA1OCw4ICsyMDQ5LDIzIEBAIHN0YXRpYyBpbnQgc2ZwX3NtX3Byb2JlX2Zvcl9waHkoc3RydWN0
IHNmcCAqc2ZwKQoKIAljYXNlIE1ESU9fSTJDX1JPTExCQUxMOgotCQllcnIgPSBzZnBfc21fcHJv
YmVfcGh5KHNmcCwgU0ZQX1BIWV9BRERSX1JPTExCQUxMLCB0cnVlKTsKKwkJLyogUHJvYmUgaGVy
ZSwgYWZ0ZXIgbW9kdWxlIGluaXRpYWxpemF0aW9uIGRlbGF5cywgc28gdGhhdAorCQkgKiBnZW51
aW5lIFJvbGxCYWxsIGJyaWRnZXMgaGF2ZSBoYWQgdGltZSB0byBzdGFydCB1cC4KKwkJICogTW9k
dWxlcyB3aXRob3V0IGEgYnJpZGdlIChlLmcuIFJUTDgyNjFCRSkgcmV0dXJuIC1FTk9ERVYuICov
CisJCWVyciA9IG1kaW9faTJjX3Byb2JlX3JvbGxiYWxsKHNmcC0+aTJjKTsKKwkJaWYgKGVyciA9
PSAtRU5PREVWKSB7CisJCQlzZnBfaTJjX21kaW9idXNfZGVzdHJveShzZnApOworCQkJc2ZwLT5t
ZGlvX3Byb3RvY29sID0gTURJT19JMkNfTk9ORTsKKwkJCWJyZWFrOworCQl9CisJCWlmICghZXJy
KQorCQkJZXJyID0gc2ZwX3NtX3Byb2JlX3BoeShzZnAsIFNGUF9QSFlfQUREUl9ST0xMQkFMTCwg
dHJ1ZSk7CiAJCWJyZWFrOwogCX0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRpby9tZGlv
LWkyYy5oIGIvaW5jbHVkZS9saW51eC9tZGlvL21kaW8taTJjLmgKLS0tIGEvaW5jbHVkZS9saW51
eC9tZGlvL21kaW8taTJjLmgKKysrIGIvaW5jbHVkZS9saW51eC9tZGlvL21kaW8taTJjLmgKQEAg
LTMzLDUgKzMzLDYgQEAKCiBzdHJ1Y3QgbWlpX2J1cyAqbWRpb19pMmNfYWxsb2Moc3RydWN0IGRl
dmljZSAqcGFyZW50LCBzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmkyYywKIAkJCSAgICAgICBlbnVtIG1k
aW9faTJjX3Byb3RvIHByb3RvY29sKTsKK2ludCBtZGlvX2kyY19wcm9iZV9yb2xsYmFsbChzdHJ1
Y3QgaTJjX2FkYXB0ZXIgKmkyYyk7CgogI2VuZGlmCi0tCjIuNTEuMAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
