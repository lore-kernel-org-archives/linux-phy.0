Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED4E606A327
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 12:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GrgvSMGD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=M6iWvIxW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VdBMPb3560NUWWqvNsgrNQkxlUKT/8prxoWmJvu1qeQ=; b=GrgvSMGDEvzjHCblr+EGZqNPob
	23KnkLGMHfXCJb6VsRUPHH6wZeaZ22DH4zp+r/r33zkTVKRkUy8UUON5UvNwRk7zhB3Rz8hhlPiZb
	/YGSqdHGptbVTgKNpjcAIHZB6yiynki/JZ3X/pgAxRT6RtWlKadKY+vTBNqqrzioYUHjID4X7ZE6s
	oupNwE6v3UHZuxpe5j2lxPReogJK0Ybcy1R9xiakVDZUnQzGwLb9SNFYuXrlpUE/l3TqZCZ/muv8a
	r/W9zShqAeNnqhdH55yR6XFfZFrJqpEOvXKy7cByecOes9LukYoDN7zU8uqVBJSwrXuNryzQ+XJZo
	n1MF6zAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEVQ-0000000GIkO-1AyI;
	Fri, 23 Oct 2026 12:36:20 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEVM-0000000GIjt-03IR
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 12:36:19 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-cc4be0e5351so337313a12.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 05:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792758975; x=1793363775; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LMgH1io6WU/pzu5HjdNUdRFrI+odqUQmdBMW7cqqEK4=;
        b=M6iWvIxWUwgUlvgWuNKheFdloABZscppxR6mnwR6/veJiXkNqFaQTFO9AC0kVCvBnB
         7hGMmEmp9HWsXkhz6YpDmIIL8V+Ba7vktIZHJBLhF2KQTzk3lUX8SkI2uGQnTiwqp0yl
         n8AIP+MW43RXBIG5hGAno8R+UkNu6878YEda8+a7UEPoi74+oBZ0oT0IuDbgHEw9mml0
         0ZdsQpT2dda+63TlOHIhW0tEMHMcKI1F84G6ypIu5MpGjIhYBBocru9um+bV+139GckS
         RvaXVRERhKBX/b7E3BumWm/J0tTq6aLeuQlpOtZzBHw+A8ylv2taZBSWv/3+NwJjP6ro
         OmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792758975; x=1793363775;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LMgH1io6WU/pzu5HjdNUdRFrI+odqUQmdBMW7cqqEK4=;
        b=Fnf0GZLAVk/j4Gpf0d9Er7dGmrbw6HxymZvRNjsNgCYbeZEFGfML+1DuUN7D3Zbl3O
         eS3I03gu49poRFCN7vwctM/gzDGWuDFDIsIWiaQr9cPbbiOS2SQLV4Mf2wcJGwACtRTw
         qKpWaIlNKSDrqN/faMkW+N6WUC3AkCiDhN+uqr/krjMNcyijRmlZ9tLUspwtDVKX/u7t
         9SY9QdOPlzh7oVlrymctq4B3n5JK3FIGWjsGPYphWy6XsPpxBrW45M/X6PwHWZjzZrf7
         0uMtpen3SLq41Cz0ZIqw7CRnV4S+8m8U8MAErEKziNkQdHdpKhes3pwUFt0nDo+RqmmD
         AwFQ==
X-Forwarded-Encrypted: i=1; AKwUvBzczfJGD5Vmc4I/YU3UgOIyr1ntPrid9pHt54SzdFmJhB5iA/3hzlU8J2qu3Pv6xmPjGSOqIqQiyPc=@lists.infradead.org
X-Gm-Message-State: AFq9FYK70VQqs5BhYJvOxLVZAileQvOFkkNFVM0IuxDOmG6hYwAX65NR
	VEFCsEjEj6Jt4OgXOQ8EXl3NkvKMhUT3aRu93n/2Ve65PTH29cy9nQ136eRM2YE6pNk+3w==
X-Gm-Gg: AYBFou3r5kQR7wapvuYfOlAiTPNpaOF+gtpmKTaaKAyiBf6yrAzj0jdk0MqYhSSa+YP
	xJoXu/31tsuccjDRNseBRu10rsW6/bZzas/V2sEQnzzQ/V/ZKxbmc97OjlDHc+kk/DsUrWwpVXK
	1JfiHG9866MD2NLBppJrzdhiSMjy+sMM3+WvHJjm3401Ktf1quQ2VvR6WKZ7QfhLZv8cWpXs8Ij
	uB4s1Ij3opLOcTqT6Lsa0j4VEEzvktwKioEfSiP/1Cb9VY/3rKgB6dar59t8X0dWWeklfZF+DJK
	hWVHTnzjgu1Nz1p5f2CGRCBL5+yPNT+SkeNebpRcSMnXgDkb5vdqcda8lSiqk1Sc8z3Bi4D/Kmf
	2nT3MdpxGx3oU90qRnxvA0dJS89OMupNbckm6ZLHIHjOO3EAo0aNmz0ggarhTo7qnTahvPsGV5w
	9uq6jkkODM8UU3C5rPwHMfaKfD0ul0AxZXpbsvi+c2T3hDHNyqDzZ+m691p6g6UeNXUMrThQ3jP
	nwfvZ0IJYl6gTY6ZBSzw/PwKJI3l/q8AAarbDN0ML283C0ypwlSX3w+WEzZkdJ5UrY6c+s=
X-Received: by 2002:a17:90b:3dc5:b0:3ac:9176:e837 with SMTP id 98e67ed59e1d1-3adce0cda5bmr1898483a91.50.1792758974782;
        Fri, 23 Oct 2026 05:36:14 -0700 (PDT)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3addd7fc6b9sm132020a91.9.2026.10.23.05.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 05:36:14 -0700 (PDT)
From: Joonhoe Kim <26rote@gmail.com>
To: Val Packett <val@packett.cool>,
	vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	wesley.cheng@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Fri, 23 Oct 2026 21:36:08 +0900
Message-ID: <20261023123609.390-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <f8a9d12b-c859-4d3f-82f6-d22b9eaee472@packett.cool>
References: <20261022165219.1368-1-26rote@gmail.com> <f8a9d12b-c859-4d3f-82f6-d22b9eaee472@packett.cool>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_053618_059318_860B3836 
X-CRM114-Status: GOOD (  15.65  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjIvMjYgOToxNCBQTSwgVmFsIFBhY2tldHQgd3JvdGU6Cj4gR29vZCBjYXRjaC4gSSBk
b24ndCB0aGluayBJJ3ZlIHNlZW4gc3lzdGVtIGhhbmdzIGZyb20gdGhpcyBvbiBIYW1vYSwgYnV0
Cj4gSSd2ZSBoYWQgVVNCIHN0b3Agd29ya2luZyBvbiB0aGUgcG9ydHMgd2hlcmUgNHhEUCtVU0Iy
IHdhcyBsZWZ0Cj4gY29ubmVjdGVkIGR1cmluZyBzdXNwZW5kLi4KClRoYXQgbWF5IGJlIHRoZSBz
YW1lIHBhdGg6IG9uIHJlc3VtZSB0aGUgVVNCIFBIWSBpbml0IHByb2dyYW1zIHRoZSBVU0IKdGFi
bGVzIG92ZXIgdGhlIERpc3BsYXlQb3J0IGNvbmZpZ3VyYXRpb24gYW5kIHRpbWVzIG91dC4gT24g
dGhlIFk3MDAKdGhlIHhIQ0kgcmVzdW1lIHRoYXQgZm9sbG93ZWQgaHVuZzsgYSBVU0IgcG9ydCB0
aGF0IHN0YXlzIGRlYWQKYWZ0ZXJ3YXJkcyB3b3VsZCBmaXQgYXMgd2VsbC4gQSAicGh5IGluaXRp
YWxpemF0aW9uIHRpbWVkLW91dCIgZnJvbSB0aGUKUU1QIFBIWSBvbiByZXN1bWUgd291bGQgY29u
ZmlybSBpdC4KCj4gVGhlIFVTQjQgY2h1bmsgYWJvdmUgKGp1dXV1c3QgYmVmb3JlIHRoZSBzdGFy
dCBvZiB0aGlzIGRpZmYncyBjb250ZXh0KQo+IGRvZXMgYSBzaW1pbGFyIHRoaW5nIGluIGEgZGlm
ZmVyZW50IHN0eWxlOiBpdCBpbmNyZW1lbnRzIGJvdGggaW5pdF9jb3VudAo+IGFuZCB1c2JfaW5p
dF9jb3VudCBhbmQgZWFybHktcmV0dXJucywgc2tpcHBpbmcgb3ZlciBxbXBfY29tYm9fY29tX2lu
aXQKPiBhcyB3ZWxsLgo+Cj4gSSB0aGluayBib3RoIFVTQjQgYW5kIERQIHNob3VsZCBiZSB3cml0
dGVuIHNpbWlsYXJseSBidXQgc2hvdWxkCj4gcW1wX2NvbWJvX2NvbV9pbml0IGJlIHNraXBwZWQg
aGVyZT8gTm8gaW4gYm90aCBjYXNlcyBvciBkb2VzIFVTQjQgc2tpcAo+IGl0IGZvciBhIGdvb2Qg
cmVhc29uPwo+Cj4gKEknbSBlc3BlY2lhbGx5IHdvbmRlcmluZyBhYm91dCB0aGUgaW1wYWN0IG9m
IHRoYXQgb24gdGhlIFVTQiBIUyBQSFkKPiBjbG9jaywgc2luY2UgaXQncyBhY3R1YWxseSBzb3Vy
Y2VkIGZyb20gaGVyZSB3aXRob3V0IGEgcHJvcGVybHkgbW9kZWxlZAo+IGRlcGVuZGVuY3kgcmln
aHQgbm934oCmKQoKRFAtb25seSBuZWVkcyBpdCwgYW5kIFVTQjQgZG9lcyBub3QgcmVhbGx5IHNr
aXAgaXQ6IHRoZSBiYXJlCmluaXRfY291bnQrKyBpcyBleGFjdGx5IHdoYXQgcW1wX2NvbWJvX2Nv
bV9pbml0KHFtcCwgZmFsc2UpIGRvZXMgd2hlbgp0aGUgY291bnQgaXMgYWxyZWFkeSBub24temVy
bywgYW5kIHFtcF9jb21ib191c2I0X2luaXQoKSBob2xkcyB0aGF0CmZpcnN0IHJlZmVyZW5jZS4g
SW4gRFAtb25seSBtb2RlIG5vdGhpbmcgZ3VhcmFudGVlcyBhbm90aGVyIGhvbGRlcjogb24KcmVz
dW1lIHRoZSBVU0IgY29udHJvbGxlciBjYW4gaW5pdCBpdHMgUEhZIGJlZm9yZSBEaXNwbGF5UG9y
dCBkb2VzLCBhbmQKdGhlbiBxbXBfY29tYm9fY29tX2luaXQoKSBpcyB3aGF0IHR1cm5zIHRoZSBj
bG9ja3MsIHJlc2V0cyBhbmQKcmVndWxhdG9ycyBvbi4KClNvIEkga2VwdCB0aGUgdHdvIGJyYW5j
aGVzIGRpZmZlcmVudDogdGhlIFVTQjQgb25lIGlzIGEgc2VwYXJhdGUgZWFybHkKcmV0dXJuIGJl
Y2F1c2UgaXQgbXVzdCBub3QgcmVwcm9ncmFtIHRoZSBQSFkgYXQgYWxsLCB3aGlsZSBEUC1vbmx5
IG9ubHkKbGVhdmVzIHRoZSBVU0IgUENTIGFsb25lLiBUaGUgbXV4IHBhdGggYWxyZWFkeSBrZWVw
cyB0aGUgVVNCIFBDUwpwb3dlcmVkIGRvd24gaW4gRFAtb25seSBtb2RlOyB2MiBtYWtlcyB1c2Jf
aW5pdC91c2JfZXhpdCBtYXRjaCBpdCwgYW5kCnRoZSBjb21tb24gYmxvY2sgc3RheXMgb24gd2hp
bGUgVVNCIGhvbGRzIGEgcmVmZXJlbmNlLCB3aGljaCBsb29rcyBsaWtlCnRoZSBzYWZlciBzaWRl
IGZvciB0aGUgSFMgUEhZIGNsb2NrLgoKdjIgYWxzbyBza2lwcyB0aGUgVVNCIFBDUyBpbiBxbXBf
Y29tYm9fdHlwZWNfc3dpdGNoX3NldCgpIGFuZApxbXBfY29tYm9fcmVjb25maWd1cmVfcGh5KCkg
aW4gRFAtb25seSBtb2RlLCBhcyBTYXNoaWtvIHBvaW50ZWQgb3V0IG9uCnYxOgoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDIzMTIzNTEyLjE5MTItMS0yNnJvdGVAZ21haWwuY29t
LwoKVGhhbmtzLApKb29uaG9lIEtpbQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
