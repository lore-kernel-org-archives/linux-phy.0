Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA260C5AC67
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 04:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2am7snYWpO3woE7Ffr70kXhXeUwsnavBxOsRKrdExc=; b=WMqUKD5AeEPjZ6
	p3/oNnmYW4PUE9wby3HTYlgdP3chOTd7APmEykEfgDDyf4hzU5HZo/rTHSLn/19wAzfMbTQ2pZKfi
	BXB0TO+JtdfyXUb9r1qTMYlzlxDzhcNvSloNAXPnPMEN6wZDD+oaPHsBe/DSyhoWHIVJ2r17A6GrS
	n38tHk0v6/FZ1odk4p2H3fsPkBLL08lKr2Nr9UdYHAtof1QywKEC5OxQZ9Gwhkpd8cVkKlAmqGZAh
	O5m2Mwb1nq13l94Tozm8Of67EWAa0KTVQ+C2zlY57K5AJf5Q1tBw+6n8311LUyzH8c7gr99/WfOKt
	gOFpz34Gg50EZHjvPTXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuN8r-0000000HMMU-35QZ;
	Thu, 13 Aug 2026 04:34:09 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuN8o-0000000HMLK-3OP1
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 04:34:08 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-69a33fb0031so268830a12.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 21:34:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786595645; cv=none;
        d=google.com; s=arc-20260327;
        b=bLh6L7bHoFMG51WcKL/jgSxX8nphQxHFx67MBxlr9qcPQkpaa73/EzQ24jA5JJFB6x
         pXFl6Qeq4G3b3RyBoy7GAnm7nrswxFXgA2mtd2M2xdlvKqM545uZSL5bA9adf2vN7TF1
         +6/Z1MsP4HOpBORLLBnmVC5uF03ZC97KeplmTzULQu1JH+YBQbWYFuSDbxl2iOBn2V4J
         sPoPuIrnqTfLnRKXLgyzSWe//B6PgTVFASybk1bulQ1SWKpcu0bRk1K5tlw03rAu39fV
         kv1rjNLvgZ34xuKiNjU4r0sQfw8rC4CxbVTB3qXB41v21RMiFc3YOq4+h+BfmlwKwd46
         uScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LWt9GMlkQ5SKTKoLjtBj5Z7tRqHhXQnrfKMH2pIVYjs=;
        fh=1IVJuPLKs0UnRsqfoweHWqWCES/naxX5hyFRxvqF60I=;
        b=QeGPQhe82upXHF00pxPACZrffyd9eVEDHuOj4sjKIjqoq/5ozV03T48N6iEW1S10dC
         4rAP+uYikkjUAz9Et5L/swSJ+v+KKCuv915tAy05W0qSHQ2UXYoPcpvfo0CAqlABqHtY
         eRQUfn8noSZjjQE6Vj0pUXsBjaj6DsN9LbEiVWfcdSNdsHmo+nLL+ZxU8jPcx2rV1aLO
         p9ehCRMT9+QugOLnZ9DJr1q8332FwEqVrAz0nRk46+dmQ0pYiIV66fAmD+ZHFd3Cxli6
         INHcc0bSXFGUp5+WXTzQIIqzZ/Z+PfBLlILCxo05eamaWem7BKECzfn6TLkzcLqfVgzy
         q+zw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786595645; x=1787200445; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LWt9GMlkQ5SKTKoLjtBj5Z7tRqHhXQnrfKMH2pIVYjs=;
        b=C9RMc39EWrhwxkvo5uzMAoVVlcQZEkDnUe50f2wOae6sPWFbxP+zU+U7Ffrq3cP7q+
         JkLyr381luM5v0YPTKhMvU1Pn+NPtqsjzY6kYSsgR10dqw0PG43HqfU3ix0G4r5m2T4T
         Zy9Nn4/ixWWggpW8RjxabuDH/zj1N6je2Imqx+U7m7ItuCoNLl5k7lLBRz3QWiX3oGKE
         WBiaEzC+KIUMPsNHIPriCGFgp52UW7zgkyYfd+jsgLUlDqhC9ybahrwzX7doPNagQ+4q
         opB41ZPOuy6TAjNyo18I1tQj8DVGPHCsTW9TaLh6jGWlEpNDPGMzoVGAihL6W4ZmcCCr
         uoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786595645; x=1787200445;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LWt9GMlkQ5SKTKoLjtBj5Z7tRqHhXQnrfKMH2pIVYjs=;
        b=YDf9NbqTjT0cSfZkcMxLVULtNWeE1vLXfBtyskVzbOy4S3sDnmF3BJzD93h6l01sK6
         GWRxIkhqSQpEkkWDsk8J3GVRj56p2gGTXuhaA/PGamOXJBEtPieoc1V2EZNZKYELihtq
         sfEQBdw+W1i1BTQaimSNtnhuOhCxoZNEaFRt9dirdaNOml+VnUZMhzUky3+T3qadt46e
         VIx6C3vSIwx296KFVDge3UO/sd4NXexKLkmKUetCDR36raBtyXwyIZ+V+k9BUAEiX2Ij
         GiaBNTuSsUYjAqxL8MkjZS7PFT4g8FSkI/XAQXBhcuxOTi9sog9uo7C0aV0mMHPRojjq
         FGSw==
X-Forwarded-Encrypted: i=1; AHgh+Ro+FkK14BqpPHkM8s8efBacjJmtAayRp+14MUDTM4oxpfJ2WLrdvyn1HsOcKmU3lLIU6E0pjAMaM9A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcjQQ5Bwae30t70yYWV6yEsPoSh2hGlIG3Gq9Yr2VdZunMWT9+
	wJMGTR0rAVQfQgAcuyHPXIlTIBNSijXR44YPO/JxHa0AvKrtlLUq1Ecyt2Z3ivFO4gO/5lisluO
	HnAlghsjImZ/aJGpCT8VhU6GXZhcqFXA=
X-Gm-Gg: AR+sD11JdGL8RAB/TFbPunLcPdEU2EjePz+5hAMhQcTjPQmkwVWF8GgME/9h0DQk5K2
	gFizIBoZFVIsThzb3qKXsDZSj26DircBqXwAwSbqK77PiS94SJRsa5PwqbXI3cFfjQIpafZQv1W
	h/P5XbLIqitR9HJbs9yaooeLOyIgwHo+LQNC3oswNAuRcRuW7SODiYv4K6OWCom22Pjcx3k+fX8
	WuEoERpR5/+tb7IcKVjEg9hh5Mgj65zZbI3m0qhHMGlDHKVKd/0VNnII7chP+kuMWJExm+9d5Ze
	UntCntLkPweZ8VHpjr9oqgXsrHdyKRXD58P2Nk7yn5s=
X-Received: by 2002:a05:6402:4285:b0:6a1:f95b:8cfa with SMTP id
 4fb4d7f45d1cf-6a38057b8e7mr588108a12.1.1786595643974; Wed, 12 Aug 2026
 21:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com> <20260812-refreshing-rampant-gecko-b38ef9@quoll>
 <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com> <an0FMnDSWbud8hPc@venus>
In-Reply-To: <an0FMnDSWbud8hPc@venus>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Thu, 13 Aug 2026 12:33:52 +0800
X-Gm-Features: AUfX_mwIpoDBN6_Xma1YlUJtYi1wlkbDTU_6WkCYu-2CI0nPqWhdFEDAcDuwlbU
Message-ID: <CAPwA33+7k7HMC7ezwH+MGn64iRHT6tVNK55t6gaC0nkkqWoE4w@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_213406_900243_10698D83 
X-CRM114-Status: GOOD (  44.00  )
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

SGkgU2ViYXN0aWFuLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBZb3VyIG5ldyBiaW5kaW5n
IGlzIGxhY2tpbmcgdG9vLiBJZiB5b3Ugc2VsZWN0IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9DU0k+
Cj4geW91IGRlZmluZWQgdGhlIGRpcmVjdGlvbiBvZiB0aGUgUEhZLCBidXQgd2lsbCBpdCBvcGVy
YXRlIGluIEMtUEhZIG9yIGluCj4gRC1QSFkgbW9kZT8KCllvdSBhcmUgcmlnaHQsIGFuZCBJIGFt
IHNvcnJ5IC0gdGhpcyBpcyBhIHJlZ3Jlc3Npb24gSSBpbnRyb2R1Y2VkIGluIHYzLgoKdjIgYWxy
ZWFkeSBkZXNjcmliZWQgdGhlc2UgYXMgdHdvIHNlcGFyYXRlIGNlbGxzOiB0aGUgZmlyc3Qgc2Vs
ZWN0ZWQgdGhlCmVsZWN0cmljYWwgbGF5ZXIsIGFuZCB0aGUgc2Vjb25kIHNlbGVjdGVkIHRoZSBk
aXJlY3Rpb24uIE1pY2hhZWwgUmllc2NoCnN1Z2dlc3RlZCB1c2luZyB0aGUgZ2VuZXJpYyBQSFlf
VFlQRV9EU0kvUEhZX1RZUEVfQ1NJIGNvbnN0YW50cyBmb3IgdGhlCnNlY29uZCBjZWxsIGluc3Rl
YWQgb2YgdGhlIFJvY2tjaGlwLXByaXZhdGUgUktfRENQSFlfRElSXyogY29uc3RhbnRzIFsxXSwK
YW5kIFZpbm9kIEtvdWwgYWdyZWVkIFsyXS4KCkluIHYzLCB3aGlsZSBtYWtpbmcgdGhhdCBjaGFu
Z2UsIEkgYWxzbyBtaXN0YWtlbmx5IGNvbGxhcHNlZCB0aGUgdHdvIGNlbGxzCmludG8gb25lLiBU
aGF0IGlzIHdoYXQgbG9zdCB0aGUgZWxlY3RyaWNhbC1sYXllciBpbmZvcm1hdGlvbiB5b3UgcG9p
bnRlZApvdXQuCgpGb3IgdjQsIEkgd2lsbCBnbyBiYWNrIHRvIHRoZSB2MiBsYXlvdXQgYW5kIG9u
bHkgcmVuYW1lIHRoZSBzZWNvbmQgY2VsbC4KVGhpcyBrZWVwcyB0aGUgdHdvIGRpbWVuc2lvbnMg
c2VwYXJhdGUsIHdpdGggZWFjaCBjZWxsIGRlc2NyaWJpbmcgb25lCnRoaW5nOgoKLyogTUlQSSBE
U0kgaG9zdCAtIHRoZSB0cmFuc21pdHRlciAqLwpwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBF
X0RQSFkgUEhZX1RZUEVfRFNJPjsKCi8qIE1JUEkgQ1NJLTIgaG9zdCAtIHRoZSByZWNlaXZlciAq
LwpwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQSFkgUEhZX1RZUEVfQ1NJPjsKClRoZSBz
YW1lIGFwcGxpZXMgdG8gQy1QSFksIHNvIHRoZSBiaW5kaW5nIGNhbiBleHByZXNzIGFsbCBmb3Vy
IGNvbWJpbmF0aW9ucwp3aXRob3V0IGFueSBmdXJ0aGVyIGNoYW5nZXM6CgpwaHlzID0gPCZtaXBp
ZGNwaHkwIFBIWV9UWVBFX0NQSFkgUEhZX1RZUEVfRFNJPjsKcGh5cyA9IDwmbWlwaWRjcGh5MCBQ
SFlfVFlQRV9DUEhZIFBIWV9UWVBFX0NTST47CgpUaGUgZHJpdmVyIGFjY2VwdHMgYWxsIGZvdXIg
Y29tYmluYXRpb25zIGF0IHBoeV9nZXQoKSB0aW1lIGFuZCByZXR1cm5zCi1FT1BOT1RTVVBQIGZy
b20gcG93ZXJfb24oKSBmb3IgdGhlIEMtUEhZIGNvbWJpbmF0aW9ucywgYXMgaXQgZGlkIGJlZm9y
ZQp0aGlzIHNlcmllcy4gQm9hcmRzIHRoYXQgb25seSB3aXJlIHVwIHRoZSB0cmFuc21pdHRlciBr
ZWVwCicjcGh5LWNlbGxzID0gPDE+Jywgc28gdGhlIGV4aXN0aW5nIGluLXRyZWUgZGV2aWNlIHRy
ZWVzIHJlbWFpbiB1bmFmZmVjdGVkLgoKQmVmb3JlIHNlbmRpbmcgdjQsIEkgd2lsbCBnbyB0aHJv
dWdoIHRoZSBjb2RlIGFuZCBjb21taXQgbWVzc2FnZXMgYWdhaW4sCnNvIHRoYXQgdGhlIHJlYXNv
bmluZyBhYm92ZSBpcyBjYXB0dXJlZCBpbiB0aGUgY29tbWl0cyB0aGVtc2VsdmVzIHJhdGhlcgp0
aGFuIG9ubHkgaW4gdGhpcyB0aHJlYWQuIEkgd2lsbCBhbHNvIHJlLXRlc3QgdGhlIHNlcmllcyBv
biB0aGUgYm9hcmQuCgpCZXN0IHJlZ2FyZHMsCkphc29uCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci84MmRhMzYyMi05YzNhLTQ1NGMtODdiYy1mYjRlYzdhZGI2OGRAY29sbGFib3JhLmNv
bQpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9hblN1eGZlaXRTcW1TSE5yQHZhbWFuCgpT
ZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4g5pa8IDIw
MjblubQ45pyIMTPml6XpgLHlm5sg5LiK5Y2IODowM+Wvq+mBk++8mgo+Cj4gSGksCj4KPiBPbiBX
ZWQsIEF1ZyAxMiwgMjAyNiBhdCAwODoyNDoxMVBNICswODAwLCDmpYrmmbrmiJAgd3JvdGU6Cj4g
PiBUaGFua3MgZm9yIHRoZSByZXZpZXcuCj4gPgo+ID4gPiBJIHJlYWQgYWJvdmUsIGJ1dCBzdGls
bCBkbyBub3QgZ2V0IHdoeSBUWVBFX0RQSFkvQ1BIWSBpcyBub3QgZW5vdWdoLgo+ID4gPiBJc24n
dCBEUEhZIGltcGx5aW5nIGl0IGlzIERTST8KPiA+Cj4gPiBJIHNlZSB5b3VyIHBvaW50LCBhbmQg
SSBkaWQgbm90IGV4cGxhaW4gdGhpcyBjbGVhcmx5IGVub3VnaCBpbiB0aGUgcHJldmlvdXMKPiA+
IHZlcnNpb24uCj4gPgo+ID4gRC1QSFkgb25seSBkZXNjcmliZXMgdGhlIGVsZWN0cmljYWwgbGF5
ZXIsIGFuZCBib3RoIE1JUEkgRFNJIGFuZCBNSVBJIENTSS0yCj4gPiBjYW4gcnVuIG9uIHRvcCBv
ZiBpdC4gQSBDU0ktMiByZWNlaXZlcidzIFBIWSBpcyBhIEQtUEhZIGp1c3QgYXMgbXVjaCBhcyBh
Cj4gPiBEU0kgdHJhbnNtaXR0ZXIncyBpcywgc28gUEhZX1RZUEVfRFBIWSBhbG9uZSBkb2VzIG5v
dCB0ZWxsIHVzIHdoaWNoIG9uZSB0aGUKPiA+IGNvbnN1bWVyIGlzIGFza2luZyBmb3IuCj4gPgo+
ID4gVGhhdCBpcyB0aGUgcHJvYmxlbSBoZXJlLiBUaGUgUkszNTg4IERDLVBIWSBleHBvc2VzIGJv
dGggYSB0cmFuc21pdHRlciBhbmQKPiA+IGEgcmVjZWl2ZXIgZnJvbSBhIHNpbmdsZSBQSFkgYmxv
Y2ssIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IHR3byBpbmRlcGVuZGVudAo+ID4gY29uc3VtZXJzIGF0
IHRoZSBzYW1lIHRpbWUuIFRoaXMgaXMgbm90IGEgdGhlb3JldGljYWwgY29uY2Vybjogb24gdGhp
cwo+ID4gYm9hcmQgYSBEU0kgcGFuZWwgaXMgc2Nhbm5pbmcgb3V0IHdoaWxlIHRoZSBzYW1lIFBI
WSByZWNlaXZlcyBDU0ktMiBmcmFtZXMKPiA+IGZyb20gYSBjYW1lcmEuIFdpdGggb25seSB0aGUg
ZWxlY3RyaWNhbCBsYXllciB0byBpZGVudGlmeSB0aGUgUEhZLCBib3RoCj4gPiBjb25zdW1lcnMg
d291bGQgZW5kIHVwIHdpdGggdGhlIHNhbWUgcGhhbmRsZSBjZWxsOgo+ID4KPiA+IGRzaUBmZGUy
MDAwMCB7Cj4gPiBwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0
aGUgVFggKi8KPiA+IH07Cj4gPgo+ID4gY3NpMkBmZGQxMDAwMCB7Cj4gPiBwaHlzID0gPCZtaXBp
ZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0aGUgUlggKi8KPiA+IH07Cj4gPgo+ID4g
VGhlcmUgaXMgdGhlbiBub3RoaW5nIGluIC5vZl94bGF0ZSgpIHRvIGRpc3Rpbmd1aXNoIHRoZSB0
d28gcmVxdWVzdHMuCj4gPgo+ID4gSSB3aWxsIG1ha2UgdGhpcyBjbGVhcmVyIGluIHRoZSB2NCBj
b21taXQgbWVzc2FnZSBhbmQgaW5jbHVkZSB0aGUgZXhhbXBsZQo+ID4gYWJvdmUgc28gdGhhdCB0
aGUgcmVhc29uaW5nIGlzIGVhc2llciB0byBmb2xsb3cuCj4gPgo+ID4gRm9yIGNvbnRleHQsIHYy
IGRlc2NyaWJlZCB0aGUgZGlyZWN0aW9uIHdpdGggYSBSb2NrY2hpcC1wcml2YXRlCj4gPiBSS19E
Q1BIWV9ESVJfKiBlbnVtLiBNaWNoYWVsIFJpZXNjaCBzdWdnZXN0ZWQgdXNpbmcgZ2VuZXJpYyBj
b25zdGFudHMKPiA+IGluc3RlYWQgWzFdLCBhbmQgVmlub2QgYWdyZWVkIFsyXS4KPiA+Cj4gPiBb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci84MmRhMzYyMi05YzNhLTQ1NGMtODdiYy1mYjRl
YzdhZGI2OGRAY29sbGFib3JhLmNvbQo+ID4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
YW5TdXhmZWl0U3FtU0hOckB2YW1hbgo+Cj4gWW91ciBuZXcgYmluZGluZyBpcyBsYWNraW5nIHRv
by4gSWYgeW91IHNlbGVjdCA8Jm1pcGlkY3BoeTAgUEhZX1RZUEVfQ1NJPgo+IHlvdSBkZWZpbmVk
IHRoZSBkaXJlY3Rpb24gb2YgdGhlIFBIWSwgYnV0IHdpbGwgaXQgb3BlcmF0ZSBpbiBDLVBIWSBv
ciBpbgo+IEQtUEhZIG1vZGU/Cj4KPiBHcmVldGluZ3MsCj4KPiAtLSBTZWJhc3RpYW4KPgo+ID4g
PiBZb3VyIHRhZyBnb2VzIHRoZSBsYXN0Lgo+ID4KPiA+IFN1cmUsIEkgd2lsbCBmaXggdGhpcyBp
biB2NC4gVGhlIFNpZ25lZC1vZmYtYnkgdGFnIHdpbGwgY29tZSBsYXN0LCBhbmQgSQo+ID4gd2ls
bCBjaGVjayB0aGUgd2hvbGUgc2VyaWVzIGFnYWluLgo+ID4KPiA+ID4gVHdvIHNpbXBsZSBkZWZp
bmVzIG5lZWRlZCBDbGF1ZGUuCj4gPgo+ID4gWWVzLCBJIGFncmVlIHRoYXQgdGhlc2UgdHdvIGRl
ZmluZXMgdGhlbXNlbHZlcyBhcmUgc2ltcGxlIGFuZCBkbyBub3QgcmVhbGx5Cj4gPiBuZWVkIEFJ
IGFzc2lzdGFuY2UuCj4gPgo+ID4gSSBhZGRlZCB0aGUgQXNzaXN0ZWQtYnkgdGFnIGJlY2F1c2Ug
SSB1c2VkIEFJIGR1cmluZyB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlCj4gPiBzZXJpZXMgYXMgYSB3
aG9sZSwgaW5jbHVkaW5nIGNyb3NzLWNoZWNraW5nIHRoZSBjb2RlLCB3cml0aW5nIGFkZGl0aW9u
YWwKPiA+IHRlc3QgY2FzZXMsIGFuZCBsb29raW5nIHVwIHRoZSByZWxldmFudCBzZWN0aW9ucyBv
ZiB0aGUgVFJNLiAoSSBjaGVja2VkIHRoZQo+ID4gY29ycmVzcG9uZGluZyBzZWN0aW9ucyBpbiB0
aGUgVFJNIG15c2VsZiwgcmV2aWV3ZWQgdGhlIHRlc3QgY2FzZXMsIGFuZAo+ID4gcmUtcmFuIHRo
ZW0gb24gdGhlIGhhcmR3YXJlIGJlZm9yZSBzZW5kaW5nIHRoZSBzZXJpZXMuKQo+ID4KPiA+IEkg
YWxzbyBjaGVja2VkIHRoZSBjdXJyZW50IG1haW5saW5lIGd1aWRhbmNlIGluCj4gPiBEb2N1bWVu
dGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCBhbmQKPiA+IERvY3VtZW50YXRp
b24vcHJvY2Vzcy9jb2RpbmctYXNzaXN0YW50cy5yc3QuIFNpbmNlIEkgd2FzIG5vdCBzdXJlIGhv
dyBtdWNoCj4gPiBBSSBpbnZvbHZlbWVudCBzaG91bGQgd2FycmFudCB0YWdnaW5nIGluZGl2aWR1
YWwgcGF0Y2hlcywgSSBjaG9zZSB0byBtYXJrCj4gPiB0aGUgd2hvbGUgc2VyaWVzIGNvbnNpc3Rl
bnRseS4KPiA+Cj4gPiBUaGF0IHNhaWQsIEkgYW0gaGFwcHkgdG8gZHJvcCB0aGUgdGFnIGZyb20g
dGhpcyBwYXRjaCBpbiB2NCBpZiB5b3UgcHJlZmVyIC0KPiA+IEkgd3JvdGUgdGhlc2UgdHdvIGxp
bmVzIG15c2VsZi4KPiA+Cj4gPiBUaGFua3MsCj4gPiBKYXNvbgo+ID4KPiA+Cj4gPiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IOaWvCAyMDI25bm0OOaciDEy5pel6YCx5LiJ
IOS4i+WNiDY6NTHlr6vpgZPvvJoKPiA+ID4KPiA+ID4gT24gTW9uLCBBdWcgMTAsIDIwMjYgYXQg
MDg6MTA6MDlQTSArMDgwMCwgSmFzb24gWWFuZyB3cm90ZToKPiA+ID4gPiBNSVBJIEQtUEhZIGFu
ZCBDLVBIWSBibG9ja3MgYXJlIGluY3JlYXNpbmdseSBkaXJlY3Rpb24tYWdub3N0aWM6IHRoZQo+
ID4gPiA+IHNhbWUgUEhZIElQIGNhbiBkcml2ZSBhIE1JUEkgRFNJIGRpc3BsYXkgb3IgcmVjZWl2
ZSBmcm9tIGEgTUlQSSBDU0ktMgo+ID4gPiA+IGNhbWVyYSwgYW5kIGNvbWJvIGJsb2NrcyBsaWtl
IHRoZSBTYW1zdW5nIElQIG9uIFJLMzU4OCBleHBvc2UgYm90aAo+ID4gPiA+IGRpcmVjdGlvbnMg
dG8gaW5kZXBlbmRlbnQgY29uc3VtZXJzIGF0IHRoZSBzYW1lIHRpbWUuIEEgYmluZGluZyB0aGF0
Cj4gPiA+ID4gbmVlZHMgdG8gdGVsbCB0aGUgdHdvIGNvbnN1bWVycyBhcGFydCBoYXMgbm90aGlu
ZyBnZW5lcmljIHRvIHJlYWNoCj4gPiA+ID4gZm9yOiBtb3N0IGNvbnN0YW50cyBpbiB0aGlzIGhl
YWRlciBuYW1lIGEgcHJvdG9jb2wgKFBIWV9UWVBFX1VTQjMsCj4gPiA+ID4gUEhZX1RZUEVfRFAs
IC4uLiksIHdoaWxlIHRoZSBNSVBJIGVudHJpZXMgbmFtZSBvbmx5IHRoZSBlbGVjdHJpY2FsCj4g
PiA+ID4gbGF5ZXIuCj4gPiA+ID4KPiA+ID4gPiBBZGQgUEhZX1RZUEVfRFNJIGFuZCBQSFlfVFlQ
RV9DU0kgdG8gc2VsZWN0IGEgUEhZIGJ5IHRoZSBNSVBJCj4gPiA+ID4gcHJvdG9jb2wgaXQgc3Bl
YWtzLCB3aGljaCBhbHNvIGltcGxpZXMgdGhlIGRpcmVjdGlvbi4gVGhleSBkbyBub3QKPiA+ID4g
PiByZXBsYWNlIFBIWV9UWVBFX0RQSFkvUEhZX1RZUEVfQ1BIWSwgd2hpY2ggcmVtYWluIHRoZSBy
aWdodCBjaG9pY2UKPiA+ID4gPiB3aGVyZSB0aGUgY2VsbCBzZWxlY3RzIHRoZSBlbGVjdHJpY2Fs
IGxheWVyLiBGaXJzdCB1c2VyIGlzIHRoZQo+ID4gPiA+IFJvY2tjaGlwIFJLMzU4OCBNSVBJIERD
LVBIWSBiaW5kaW5nLgo+ID4gPgo+ID4gPiBJIHJlYWQgYWJvdmUsIGJ1dCBzdGlsbCBkbyBub3Qg
Z2V0IHdoeSBUWVBFX0RQSFkvQ1BIWSBpcyBub3QgZW5vdWdoLgo+ID4gPiBJc24ndCBEUEhZIGlt
cGx5aW5nIGl0IGlzIERTST8KPiA+ID4KPiA+ID4gPgo+ID4gPiA+IFN1Z2dlc3RlZC1ieTogTWlj
aGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogSmFzb24gWWFuZyA8amFzb245ODE2NkBnbWFpbC5jb20+Cj4gPiA+Cj4gPiA+IFlv
dXIgdGFnIGdvZXMgdGhlIGxhc3QuCj4gPiA+Cj4gPiA+ID4gQXNzaXN0ZWQtYnk6IENsYXVkZTpj
bGF1ZGUtZmFibGUtNQo+ID4gPgo+ID4gPiBUd28gc2ltcGxlIGRlZmluZXMgbmVlZGVkIENsYXVk
ZS4gR3JlYXQsIHRoYXQgcHJvYmFibHkgbWFrZXMgQUkKPiA+ID4gY29uZ2xvbWVyYXRlcyB2ZXJ5
IGhhcHB5IHRoYXQgd2UgZG8gbm90IHR5cGUgZXZlbiB0d28gbGluZXMgYW55bW9yZSBhbmQKPiA+
ID4gbmVlZCB0aGVpciByZXNvdXJjZS1odW5ncnkgZGF0YSBjZW50ZXJzIHRvIGRvIHRoYXQgZm9y
IHVzLgo+ID4gPgo+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+IEtyenlzenRvZgo+ID4gPgo+ID4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
