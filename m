Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2005ECD4F3D
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 21:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q73L9C94SNpiK066mnrW1IukSoVr4I29KHlkw60a2Hk=; b=O5TsVY4lJ3QbN0
	4zajVuxXHcQ5YV/mdbOYMH6NeKvmWPwxRj3o9XVvCbAAJFvBX7dNbMfFnJCTxoGeOjGRKAITAyjW0
	M5iaX0JRioY4EX820Q5ID5nYPQqxuZmNaftHxQ9l8pEyZWClxE3BLwXV1/uGkaKRnoaeBYtveaQb4
	IDC1BPXIcyBv/69NvlRs8E8cPhqkyDalBHXMxVxfv8vZfST8Sp7iSE5b6crhHDAiydCK7Jb8mrtkG
	FAGolckvTBWH00cBp1+Uhn7QC6OYDGL1vwsqzHjUG2GyI+tAb63epWVscwjZxHTrizE7vdkQPTyX6
	ExLg+K5LhODmmXfuRsSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQXVC-0000000C0Hk-344v;
	Fri, 22 May 2026 21:33:54 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQXVA-0000000C0Gw-0qpx
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 21:33:53 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-48a563e4ef7so59646765e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 14:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779485630; x=1780090430; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KEDekoRqr3IuhM4WvgAwDyzO0pzOp2MJJnI/rw2z0EQ=;
        b=Ix2TOrVJQiVkFpiIxzeNQPuEFC1a12jXMrA48JFvBN3enmmb50IF16sjPtcOy+mVUh
         SG9xUQ+3Ew11Qgke+jadFF/bgGlagJJ5ptQnZ5tr3iSilQG4xY73/qTnVxbwSdByf0mJ
         RqVY8z2FqcU9xVl6oagwLbZB7zqp7I8NtiJ4lRdfx+C4GXeYQBEd9r8Od3yvXjWmUMDx
         0VhgOoFzWKewxj3nDrSlfN9lUeNquTB1LkW87tOYIsPEVeyD6ydgV8vICVzQotr2JUso
         U/6rCveTFjGDAIJT35185B+hu4kk6NhWp1oxq9atE0W2c1oyRxikoQB/Etzl6YQxBNXa
         ShmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779485630; x=1780090430;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KEDekoRqr3IuhM4WvgAwDyzO0pzOp2MJJnI/rw2z0EQ=;
        b=RANsllVUqSHtXV7zGCeXx3cs/R/clxhmSiEPtTrUUHMPw9vtKoP4htceP0BjzfZm4f
         XJBZCpuCNJRJ67SUEUAOPDzA6/ABPJugnW3CovFkBMW3AtBbQUSoHjCKcpmw2NV6qG6s
         XXjLVWJ795ApftL9ymicf+E2Uw925ZbPXqivIKj00NhzTYFe4CV+e/5/QH7PpcSXC+v6
         zg9O5LrC6E36/mmMOn21fvcasHP5aWRDSj8Wksot+27i9vOgOmajCvs0xmJLCNEbQ28R
         jUz+wtLoMHgbmSy7wJCk/u5s88mCAkmb8tcY5Uzf5A49ta3gtSd4PgSUFGh5NaRhw3fA
         UBug==
X-Forwarded-Encrypted: i=1; AFNElJ/TQMan0km8g8YeuUnfZTut8tSX6mbST7DDfBQudcZ9n5hwkVw7Y40Sd/rhsmQwk2hWipcKlYOXxk0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzE3Qvos267g7g4Zkg4YLmJgwpmuegH/Nd2djpGgJK1yH46uPho
	dkI4501zASKIk2zthccERKQKji3oE4kptFBdjjs2PQ8VTUi0940t9zaEpdeoiOsn89o8sg5gL2q
	hzZrt5wk=
X-Gm-Gg: Acq92OHwUGKAs2edSZUmL+EbVObul9Yw1E8GAB9KisWBBD41WPCuydTxlz36/qM3tu0
	ns6m+k6MP/vJRKCAJ7slsrswgFT+vwRypInTuu+yX7eYOZe9zVBERKfVd/I/AHcOUQsbtodpVqK
	L/BRh9EXR7/MC7mHhnYjASHIqeHKzYk8dLfUupj1zxVOrwNUt2pfsQZYLAOMw28uVwkdMnzxguf
	BQ2YDb5ctDnlDal1GBmBtICo4MSbvgaOy3ezbUhdbUjpR0TaD3VrLKaKA8P4DvOlWI2vqyJG9zl
	8lj3GMPHb7uMgF//r6CDV8nKgwmZbeYMdrydIAq9w6Nm5w0szwrWQJEdw0edIf/cYi/HKd+q1U0
	p1m3mVBbk37eNuXLG7Ft29rCZ86p7D4xGNuXKin91yDfYkY2uF4TnaXBx2amdwXHPxcE51D9BXS
	xt+jhgRLNERm5+AlxgWa07PfxHh0GHxg2NgXiNiyfDMdE9QGqmCDZI/9S+
X-Received: by 2002:a05:600c:4ecc:b0:490:389:7644 with SMTP id 5b1f17b1804b1-490426d4d7fmr76531935e9.17.1779485630196;
        Fri, 22 May 2026 14:33:50 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.110.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490469f61b0sm19105135e9.5.2026.05.22.14.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 14:33:49 -0700 (PDT)
Message-ID: <a03fa27c-57ad-48e3-9223-b4d30978ded5@linaro.org>
Date: Fri, 22 May 2026 22:33:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma to
 256 MiB
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, val@packett.cool, laurentiu.tudor1@dell.com,
 alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-5-mike.scott@oss.qualcomm.com>
 <ac559877-f4f2-48d7-b00c-4cf24fc64489@linaro.org>
 <581cc180-b993-4b86-81ae-17822a35a1fb@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <581cc180-b993-4b86-81ae-17822a35a1fb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_143352_272178_8E61906C 
X-CRM114-Status: GOOD (  14.58  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjIvMDUvMjAyNiAxODoxNiwgTWljaGFlbCBTY290dCB3cm90ZToKPj4g4pSU4pSAWyRdIDxn
aXQ6KDAuNy4wLW11bHRpcGFzcy12MCopPgo+IAo+IEdvb2QgcG9pbnQgYWJvdXQgdGhlIGxpYmNh
bWVyYSB2ZXJzaW9uLiBJIGRlYnVnZ2VkIHRoaXMgb24gVWJ1bnR1IDI2LjA0IAo+ICh2MC43LjAr
cGF0Y2hlcykuIEkgdHJpZWQgdGVzdGluZyB2MC43LjEsIGJ1dCBpdCBjYXVzZWQgYSBjcmFzaCBk
dWUgdG8gCj4gQVBJIGNoYW5nZXMgd2l0aCBvdGhlciBwYXJ0cyBvZiB0aGUgc3Vic3lzdGVtLsKg
IEkgY2hlY2tlZCB0aGUgZGlmZiBvZiAKPiB1cHN0cmVhbSBiZXR3ZWVuIHYwLjcuMCBhbmQgdjAu
Ny4xIGZvciB0aGUgZG1hIGFsbG9jYXRvciBjb2RlIGFuZCBJIAo+IGRpZG4ndCBzZWUgYW55IGNo
YW5nZXMsIGJ1dCBJIHdhc24ndCBsb29raW5nIGF0IHRoZSBzb2Z0d2FyZSBJU1AgY2hhbmdlcy4K
PiAKPiBUaGlzIGhpZ2hsaWdodHMgdGhhdCAiSSdtIGRvaW5nIHRoaXMgd3JvbmciLiBJJ2xsIG1v
dmUgdG8gYSBjbGVhbmVyIAo+IHJvbGxpbmcgZGlzdHJvIHdoZXJlIHN0YXlpbmcgY3VycmVudCBp
cyBhIGxvdCBlYXNpZXIuCj4gCj4gVGhlIEdQVUlTUCBzdXBwb3J0IGxvb2tzIGdyZWF0IQo+IAo+
IERyb3BwaW5nIHRoaXMgcGF0Y2ggYXMgSSdtIG5vdCB1bmRlcnN0YW5kaW5nIHRoZSBmdWxsIGFs
bG9jYXRvciBzdG9yeS4gCj4gU29ycnkgZm9yIHRoZSBub2lzZS4KClRoZSB3aG9sZSBtYWtlIENN
QSBiaWdnZXIgdGhpbmcgaXMgYW4gZXJyb3IgSSB3YXMgcHVzaGluZyBteXNlbGYuCgpDTUEgaXMg
cmVxdWlyZWQgZm9yIHNvbWUgc3lzdGVtcyBsaWtlIHNheSBIYW50cm8gb24gaS5NWCB3aGVyZSAt
IHRoZSAKZW5jb2RlciBkb2Vzbid0IGtub3cgaG93IHRvIGRlYWwgd2l0aCBub24gUEhZUyBjb250
aWcgbWVtb3J5IHNvIHdoZW4geW91IAphcmUgcGFzc2luZyBmcmFtZWJ1ZmZlcnMgYXJvdW5kIGZy
b20gb25jZSBodyBibG9jayB0byBhbm90aGVyLCB5b3UgbmVlZCAKdG8gbWFrZSB0aGVtIHBoeXNp
Y2FsbHkgY29udGlndW91cy4KCk5vdCBhIHByb2JsZW0gZm9yIHVzIG9uIFFjb20gaHcgdGhvdWdo
LiBMaWtlIFJvYiBzYWlkLCBJJ20gYWN0dWFsbHkgbm90IApzdXJlIHdoeSB3ZSBuZWVkIGEgQ01B
IGJsb2NrIG9uIFFjb20gaGFyZHdhcmUgYXQgYWxsLgoKR1BVIG9yIFdpRmkgSSB0aGluayBidXQg
bm90IGZvciBDYW1lcmEgYW55bW9yZSBhbnl3YXkuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
