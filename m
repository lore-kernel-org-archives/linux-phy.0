Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9667ECCF9F8
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 16:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXS5qHeGmm1xgqZJj3XtLuWPb2aG1KLHsav3rH2pWzQ=; b=UDNAr3cpTto9BY
	+znVnaKjJpPtkyV/O9VUfExAY8JjxAVAXM0VXv6c70rVUJBfVloZtMIlI8vBfJf1hlJeCfiuJRNh0
	uZvqJFx2reans9r67wiK6ocISmVpyI4zCeiICLug6CM5LEocwj2cBS26gna3WUJ+R3Jo+nVFXNoiE
	9dYa4ea25DID0YqYAQKkVdQ/ajhtz3pNEhqCyIBGi26P8wh+FjUzi1cmPMFGaGBEPf3OtSW130Bt2
	XvVmcZYkRqHhP+yri6izrgUqGL21GJcgYpo/JBEE6yFR8CljPl7VHBR++pigMpT3AbRHbaMKfe1YD
	SNDDAO3b26Z337sKUl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGgca-0000000E5jK-0spl;
	Wed, 05 Nov 2025 16:44:32 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGgcW-0000000E5i8-4Af9
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 16:44:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4711b95226dso155725e9.0
        for <linux-phy@lists.infradead.org>; Wed, 05 Nov 2025 08:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762361067; x=1762965867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZY2ovksieRapgk658pHLWkUZACRChu2RMh3Rj1+1OEY=;
        b=b/U4VMUoQT5ifINeMrEfRMQqK9jEfD3KOSX/Wge+B1c6t+PAmZNWMWg0z4XuVYxky9
         VBA2OVUjyx5RKEU0PxmTGFgxOvbz7dH4rpFNrQGW4tv/AchIUUq2G/uhQeBBSD8P2BTi
         C8uc5FcE24Us9Hg5fJcQY1IvAaMVQAMv4uWCOwpbnxMMDPpZtNrOR9r9BcaHpMIH76qG
         ucvWvlwAUhGOgK9anga5ZrKGcfA5Zi66T6ptR2IqF7Hfp4SX8unMTzviMzAYMdem3FLb
         ot7U7cka0dM18mouRILcQq/4Wzxq6omlZRhVwzqb+5u/6ulB+4HJa/dpZJpsY82KOHEF
         TqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762361067; x=1762965867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZY2ovksieRapgk658pHLWkUZACRChu2RMh3Rj1+1OEY=;
        b=VlmlnK9Cx5BaxWZG+xK2hbSYaOGTjCOnAi/m4phe4QxRn7e2/aC/U3HmrHf4UtKTHw
         +ia0PpEENhticptGgb8FF3mktN7upZDetCRv9o6TzD6HSH1utobTPmN3zCbfXEuSh4P1
         FzKcG7f0OXsQdU5leUW3CN3sD1ruL01VexxqekDLE8nrgVn5yYDD127CZAGMEAGY4IK3
         9ucKWkScG6wUznruZ+IXy+V+72qjs7b7K80wyOWB9rjs4b/u5THWlvx2hz9yya8ExwdY
         12sJZrRAdHQuUo5/ebJ8WJoHE9ih3PBQojyhvh3ilEBBFUH9EThd9KmRUgK4yNHIx9PS
         21gg==
X-Forwarded-Encrypted: i=1; AJvYcCXkRWKBaxTaG3/OgrHBL0x0OxlqAqS0QGxVsM8X5MC9cj5rd9AT09SYbrhCXdUVxX+7WdVB6Z+We4M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzYh0dQjg/iHmMtcTyg6ieNr7UqEwUq4+7kl/rNTw+b2iuc7wL
	SNYNRO2XJKY3Ew0tzbivjMEbRNHkYtvR3LmUUc/tGA2SVNFMnZCY1/Yv
X-Gm-Gg: ASbGnctvJ+9ngNGwPxsC+HD/F+7f9lwllbHM9xRXQswSTr4om7DDHjhBk5IK4Xd07MW
	zdsRJufmI/f7kh2ItdceohMMr0BXS3qEaKw55VAOcTJFbsas9DQilnxiHKeruShFXZTXEJucXdO
	p5F5/2HGda/vVZwjzy4Iv4PTLfN/w7Ej2H4CMUSvS18xdCyp/M+2dRjDpxdAHaQpJ7Rrxep0m+e
	AivlTjRcYkgRt9wS3g12EOGmXxHv0sMarEi2ceUXh7KM2r8bic91wkgjxDXTTIzZXlbZbrBxoK1
	k+16xmxTIA36cTunAz1SE1hVSbU37hZdqifAWqpTtyhiHiGqTqjEPXklDgUJnU2eRuUq89GGRgd
	k6EL1wdn/MF2Gs3wyqaVJSrfwQwMVg2aEJWT9LCZ62sqFrSFsDve/vJ/SqC1nO3Fe1rirfWg0Oq
	0rjuhqR1zRHHPNOWQXjwJ+rQLgy2zTlhulMh5netWC5rxRyKemDFr0Kk5JhA==
X-Google-Smtp-Source: AGHT+IGU8h8RqLt1fJTOpph+Kb6J+YXpLSWNisJ5Rw8ElaLdkndSmhqlDVbaDGVZcwA5Mkqog8YWaw==
X-Received: by 2002:a05:600c:1c90:b0:477:589e:6c2f with SMTP id 5b1f17b1804b1-4775ce1eabamr35876305e9.22.1762361066679;
        Wed, 05 Nov 2025 08:44:26 -0800 (PST)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc1fdef7sm11938330f8f.43.2025.11.05.08.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:44:24 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Marco Crivellari <marco.crivellari@suse.com>
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Marco Crivellari <marco.crivellari@suse.com>, Michal Hocko <mhocko@suse.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] phy: sun4i-usb: replace use of system_wq with system_percpu_wq
Date: Wed, 05 Nov 2025 17:44:22 +0100
Message-ID: <12772271.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <20251105152023.259813-1-marco.crivellari@suse.com>
References: <20251105152023.259813-1-marco.crivellari@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_084429_094224_66E26F33 
X-CRM114-Status: GOOD (  10.10  )
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

RG5lIHNyZWRhLCA1LiBub3ZlbWJlciAyMDI1IG9iIDE2OjIwOjIzIFNyZWRuamVldnJvcHNraSBz
dGFuZGFyZG5pIMSNYXMgamUgTWFyY28gQ3JpdmVsbGFyaSBuYXBpc2FsKGEpOgo+IEN1cnJlbnRs
eSBpZiBhIHVzZXIgZW5xdWV1ZXMgYSB3b3JrIGl0ZW0gdXNpbmcgc2NoZWR1bGVfZGVsYXllZF93
b3JrKCkgdGhlCj4gdXNlZCB3cSBpcyAic3lzdGVtX3dxIiAocGVyLWNwdSB3cSkgd2hpbGUgcXVl
dWVfZGVsYXllZF93b3JrKCkgdXNlCj4gV09SS19DUFVfVU5CT1VORCAodXNlZCB3aGVuIGEgY3B1
IGlzIG5vdCBzcGVjaWZpZWQpLiBUaGUgc2FtZSBhcHBsaWVzIHRvCj4gc2NoZWR1bGVfd29yaygp
IHRoYXQgaXMgdXNpbmcgc3lzdGVtX3dxIGFuZCBxdWV1ZV93b3JrKCksIHRoYXQgbWFrZXMgdXNl
Cj4gYWdhaW4gb2YgV09SS19DUFVfVU5CT1VORC4KPiAKPiBUaGlzIGxhY2sgb2YgY29uc2lzdGVu
Y3kgY2Fubm90IGJlIGFkZHJlc3NlZCB3aXRob3V0IHJlZmFjdG9yaW5nIHRoZSBBUEkuCj4gCj4g
VGhpcyBwYXRjaCBjb250aW51ZXMgdGhlIGVmZm9ydCB0byByZWZhY3RvciB3b3JxdWV1ZSBBUElz
LCB3aGljaCBoYXMgYmVndW4KPiB3aXRoIHRoZSBjaGFuZ2UgaW50cm9kdWNpbmcgbmV3IHdvcmtx
dWV1ZXMgYW5kIGEgbmV3IGFsbG9jX3dvcmtxdWV1ZSBmbGFnOgo+IAo+IGNvbW1pdCAxMjhlYTlm
NmNjZmIgKCJ3b3JrcXVldWU6IEFkZCBzeXN0ZW1fcGVyY3B1X3dxIGFuZCBzeXN0ZW1fZGZsX3dx
IikKPiBjb21taXQgOTMwYzJlYTU2NmFmICgid29ya3F1ZXVlOiBBZGQgbmV3IFdRX1BFUkNQVSBm
bGFnIikKPiAKPiBSZXBsYWNlIHN5c3RlbV93cSB3aXRoIHN5c3RlbV9wZXJjcHVfd3EsIGtlZXBp
bmcgdGhlIHNhbWUgYmVoYXZpb3IuCj4gVGhlIG9sZCB3cSAoc3lzdGVtX3dxKSB3aWxsIGJlIGtl
cHQgZm9yIGEgZmV3IHJlbGVhc2UgY3ljbGVzLgo+IAo+IFN1Z2dlc3RlZC1ieTogVGVqdW4gSGVv
IDx0akBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIENyaXZlbGxhcmkgPG1hcmNv
LmNyaXZlbGxhcmlAc3VzZS5jb20+CgpSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5l
ai5za3JhYmVjQGdtYWlsLmNvbT4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
