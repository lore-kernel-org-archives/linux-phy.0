Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CB5606A6DF
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jDgIWyWy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KqFDA992
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=uQI4vQwmAtPJvqbxRUiXcM0rf+n4AtIZGWvfVuFBmMQ=; b=jDgIWyWygaCvm4amV1HqHCWsNP
	y0brYRodKlmGx2Wj2+DuBnNHs1f+2i1py3gzJe9LVDwT3zaqUSxrsUVBvxb3l7e/X5u4WbarcGly3
	htz0NaFMWLqB+ogpgxoZRZ4InVOd4OIUpGHEXUS6b9jNMm7P9TZBRyWizCjJaXvHlKdoBbmw555KI
	boKGI8v6tWv07HzNZ0buqQqmpVUJpVFE6HCNTDvv5rDqz/6AhJIUpQ/fHC/veZM95373mqjnJ5lZn
	TbkruW+h2juixe1w+mpwbfGpKe6UeAYPupVMveUDv9IGiNvI2ObueJCRmtlftV1fVfdh6qxFbWBn5
	RAJxammw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUAf-0000000G3t1-34Wr;
	Fri, 20 Nov 2026 19:21:18 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUAX-0000000G3qp-3Vww
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:21:14 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso1128776f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 11:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795202466; x=1795807266; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Ba1LZYpNSjXVJ+zOLl8k2Tar0vWRwRjXeVxP97+SFE0=;
        b=KqFDA992TyQxOcqtCt9Gj+kvzy7280R5zjFNxoiXmuxfFf1h+miHTzGxrQFdvOUldI
         NEDCLjJJhDmibM4XssmM7O/KWOrXFPOBfmMg+fjchokPkvNz1q/ftWBV3PoG/fX1fPTx
         oCINkCMpqIc1jvvmCWJDHHl7yeRvxBYMNWloI4lePkzbSlMob1LsXwizgTJS+i5BWqBP
         sHdz/tU0ECWGLJMwb+fStq0TapW/0EIzFWr0qXnicnNxf+eDBnM0cFnwn2jode0nWQcu
         ntxnMzo/QG63xjbBKr6Hr2dqShiANPvPOd8bUYNk/woSMybks4feoi9kNaAEFBSMrt74
         bn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795202466; x=1795807266;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Ba1LZYpNSjXVJ+zOLl8k2Tar0vWRwRjXeVxP97+SFE0=;
        b=bSaFbKcmABnra/vJ7pNCrwOfoGowNZhdtnIjXUzXfp6BxlQ05yqT5Wxvvr5G5od+Zd
         GBhxfZHS+MoMiQ0K8SJBU1Dzo05b8oTf64qCIHqRiMEjkez1+P5OSV+JL3mdmBond/11
         YjWsojc8TmC5xULOWicR+fVWqOf4rP0iVBg9+Gg/ao/tQ0B1VQvy3bVlZs0Va1pQ4CUW
         VeBvZ692FcHUm1OqsAsDgvXLeJU952Vdakhd18g+WyEsl/Uf0tJyqi0nTFTvWJ1FTSA6
         LejFmQmWQ7jBfIivzVOBMmaARBECRICdcSb4Wvdj5m2DekM/axa24A4qgthIL04BmPJq
         RCbg==
X-Forwarded-Encrypted: i=1; AL+hErHU+2IlqVTCD2U9vsqqyVsfkpRtKZvy60LwIHt/x1X3fE9K+eeqigxq9Y5lL4w7fyNmqxDy9OmsRLw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+BMV3fXcwNjOGx5/ZqhZCDrYfLYQQXshj0uxwpFxwJ6rpMfbC3
	dswWhEB+/rbDCXEGq4zgMchpdxd1yCh41Y8PKEFsZcylD6g8/GMZe2Nx
X-Gm-Gg: AZFdTZdYOjdx6S8KWYrofiFge3V7oJEnyLLVBZ4z3koBZEtCQ0aeVqWJz0U1gLSgYj7
	BruzBpv4UsVDCAovEsExZiQyUUTcjW6enGpf0tzjYfvSxABjKfCPfny6G1mUZHwXjt+7o0v66WJ
	00dU71rUFT1AWuM4bkjiezI+l8Ywkk/06mWMtxc0Ep0q1YgGHZ3KNFemxuoXSQ5iStA38MdqYHW
	TShncQUWCRGbuCWJoaV6tLmPxEaJzY0ZN7IKzBZGOfHXRHTIe5Q4YvgT5JERMiwwz96dJtjyqKI
	xAf4h5uYPX+4aQmbEmpzvuAls2PIJ7ytpzCBoF9nrPQzpHRtfsIBGrmC7VY1Oftdx8RZ4uzmgEt
	M1LOlmoxm+2Db4vJ3vNDIzMtn640CKAn084/0F1px0qSAepMr+s4F17h9KTMP3HH/TwbUEq+/yP
	3GsWQXwfIFg/dG3VGRwXnw8vT1g8huU/OtF6x/KrV2ykXHAVtCfJjDH39UgxrLcLYfTBVj4Bdoy
	ea0/B3St+3f7wv7Q/ldTxf03Hh9n1dXN4TxZcln17Wee3Cit7XVcWdVoSQ9z8PvKqj9LAOy1etl
	6eZcwcpAuA46MK4WMl6lkDCgmh4q4LzwRd45pSH8
X-Received: by 2002:a05:6000:4541:b0:48c:4658:602b with SMTP id ffacd0b85a97d-4abb400bbf3mr6410831f8f.10.1795202465920;
        Fri, 20 Nov 2026 11:21:05 -0800 (PST)
Received: from [192.168.0.2] ([197.250.160.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f204sm8405703f8f.21.2026.11.20.11.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 11:21:05 -0800 (PST)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Subject: [PATCH 0/6] ZTE zx297520v3 USB support
Date: Fri, 20 Nov 2026 22:20:49 +0300
Message-Id: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/0WOXQ6CMBAGr9Lss036I2B7FcNDW1atCmhbCJFwd
 yuQ+DjJ7Hw7Q8TgMYImMwQcffR9l4EfCLib6a5IfZMZBBMl57yin0moIVrqpFHM2ELJ4gjZfgW
 8+GktneuN42Dv6NLvfDcCvoc8kTbtv6DJ1mente+eDyotq6RVjRBNqUe+blgTkbq+bX3SpMMp0
 f0tBfWyfAEDtdoxzAAAAA==
X-Change-ID: 20261117-zx29usb-c3a90ab59354
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>, 
 Navid Ghahremani <ghahramani.navid@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, mfd@lists.linux.dev, 
 linux-pm@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3961;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=FWQb+bD4+CzUS89QtQFZvvJ9rtMw5c8LSvVgJ2lgW6o=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBrAJ2WLxQfwJwf3UU2/2ZG/baKj8e+AcifMVpgO
 DzUx5mh4amJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCawCdlhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiIY7BAAjh6uYVRLaiV6bbaXmSFHRPt6/PfvQKT
 vnjZ0TnBwX/y9aoG++Jm4tUH+wbRUU8ehmzojZRpUZ7JXcHDq55bO1AyB5pOaH57BIN4gZIebfh
 r3LdzDmBhjlXwe6Jq1Vh6M1lGMqj7zOnCUkA7KAhKFT5V/i+o/Ho4HkU++cMFmF+uakN5UA65O8
 MrhBnKtCvBafYQgDA0S2Y7hMRfUvWfPlXGTzi94rCBZE9CX6JzvyZW625HI+vhLRchX1cxvm1JK
 J6auyg2Bc6BXE+DlDcGvmmGzfUt+gvNcGVIBTkb+c+AMnkARc/IkZ8o3LgPowZEeXWp8+bYE5Cg
 /zT+Te6JV6qqnCopAErFnF5Wn9Vrobq++ZPlG35Sbp8BJIzVKaE9Wwlzz+hRR5NrFd6B7FpVDVv
 DzHCDbvNOL7+6T9JsExO1mMskdl7JiWSEJyjKcAAG9IZaeNBwRG8yaaKK0Y6eDzLcn6kG5V8EeU
 ic88V1VXgF+UA/OlSAMJ2U/6AfzTjnmDGRbrnkaeGP7CnsW64JDQD1kz1eQMWl7okCNKuDEwSpN
 g7fHe91pG8duQy7BZQvncNoS2Zm2MO3h5UZ02gvAaH+Dn69f6VNM01R4Fxd6lhD7BZ+31sPRrPi
 fs3Dug01rMorlaA8eUHw2y3MjpEiul4iA3bwKz/s9BChfh2WolHk=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_112112_912927_71DCF6D8 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 1.2 (+)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpUaGlzIHNlcmllcyBleHBhbmRzIHRoZSBkZXZpY2UgdHJlZSBhbmQgZHJpdmVycyBmb3Ig
dGhlIHp4Mjk3NTIwdjMgYm9hcmQKZW5vdWdoIHRvIGVuYWJsZSB0aGUgRFdDMiBVU0IgY29udHJv
bGxlciBmb3VuZCBvbiB0aGlzIGJvYXJkLiBUaGlzCnNlcmllcyBkZXBlbmRzIG9uIHRoZSB6eDI5
Y2xrIE1GRCBkcml2ZXIgdGhhdCBoYXMgYmVlbiBhY2NlcHRlZCBpbnRvIHRoZSAKTUZEIHRyZWUs
IGJ1dCBub3QgeWV0IG1lcmdlZCBpbnRvIGxpbnV4LW5leHQuCgpUaGUgaW5kaXZpZHVhbCBwYXRj
aGVzIGNvbnRhaW4gYSBkZXNjcmlwdGlvbiBvZiB3aGF0IHRoZXkgZG8gYW5kIHRoZSAKcmF0aW9u
YWxlIGZvciBkZXNpZ24gZGVjaXNpb25zLiBIZXJlIGlzIGEgcXVpY2sgb3ZlcnZpZXc6CgpQYXRj
aCAxOiBEVCBiaW5kaW5ncyBmb3IgdGhlIG5vZGUgY29udGFpbmluZyB0aGUgbmVjZXNzYXJ5IHBv
d2VyIGNvbnRyb2xzClBhdGNoIDI6IEFkZCB0aGUgc29jc3lzIG5vZGUgdG8gdGhlIE1GRCBkcml2
ZXIKUGF0Y2ggMzogVGhlIHBvd2VyIGRvbWFpbiBkcml2ZXIKUGF0Y2ggNDogQSBtaW5pbWFsIFVT
QiBQSFkgZHJpdmVyClBhdGNoIDUsIDY6IExpbmsgaXQgdG9nZXRoZXIgaW4gdGhlIERUUwoKRGVw
ZW5kZW5jaWVzOiAxLTQtNSBkZXBlbmQgb24gZWFjaCBvdGhlciBhdCBidWlsZCAvIERUUyB2YWxp
ZGF0aW9uIHRpbWUuCjIsIDMsIDQgYXJlIGJ1aWxkIHRpbWUgaW5kZXBlbmRlbnQgYnV0IG5lZWQg
dGhlaXIgcHJldmlvdXMgcGF0Y2hlcyB0byBiZSAKZW5hYmxlZCBhdCBydW50aW1lLgoKVGhlIE1B
SU5UQUlORVJTIGFkZGl0aW9ucyBhcmUgZ29pbmcgdG8gY2F1c2UgaXNzdWVzIHRob3VnaC4gT25j
ZSB0aGUgCnBhdGNoZXMgaGF2ZSBiZWVuIHJldmlld2VkIEkgY2FuIGVpdGhlciB0YWtlIHRoZW0g
b3V0IG9yIGNyZWF0ZSBhbiAKaW1tdXRhYmxlIGJyYW5jaC4KClRoZSBvcGVuIHF1ZXN0aW9uczoK
CjEpIEhvdyBtdWNoIGRvY3VtZW50YXRpb24gaXMgYXBwcm9wcmlhdGUgaW4gdGhlIGJpbmRpbmcg
LnlhbWw/CgpJIHdhbnQgdG8gZG9jdW1lbnQgdGhlIGlkZW50aWZpZWQgcmVnaXN0ZXJzICpzb21l
d2hlcmUqLCBhbmQgc2luY2UgdGhlIAp5YW1sIGxpdmVzIGluIERvY3VtZW50YXRpb24vIEkgcHV0
IGl0IHRoZXJlLiBJIGRvIHVuZGVyc3RhbmQgdGhvdWdoIGlmIAp0aGUgTGludXgga2VybmVsIGRv
ZXNuJ3Qgd2FudCB0byBiZSBhIGJhY2t1cCBTb0MgZGF0YXNoZWV0LgoKMikgUG93ZXIgZG9tYWlu
IHZzIHJlc2V0OgoKVGhlIHBtIGRvbWFpbiBjb250cm9sbGVyIGhhcyBhIHJlc2V0LCBpc29sYXRp
b24gYW5kIHBvd2VyIHJlZ2lzdGVyIGZvciAKZWFjaCBvZiB0aGUgNSAobWF5YmUgbW9yZSkgZGV2
aWNlcyBpdCBjb250cm9scy4gTXkgYmluZGluZyBsaW5rcyB0aGVtIAp0b2dldGhlciBpbnRvICNw
b3dlci1kb21haW4tY2VsbHMuCgpUbyBzdGFydCB1cCB0aGUgR1NNIGNvbnRyb2xsZXIsIGl0cyBk
cml2ZXIgd2lsbCBoYXZlIHRvIGFzc2VydCBhbmQgCmRlYXNzZXJ0IHRoZSByZXNldC4gVGhlIEdT
TSBjb250cm9sbGVyIChEZXJpdmVkIGZyb20gYW4gSW5maW5lb24gClBNQjg4NzcpIGhhcyBhIHNl
bGYtYXJtaW5nIHdhdGNoZG9nIGFuZCBhZnRlciAyLjUgbXMgaXQgc3RvcHMgCnJlc3BvbmRpbmcu
IFdpdGggdGhlIHBvd2VyIGRvbWFpbiBpdCBpcyBzb21ld2hhdCBhd2t3YXJkOgoKZGV2bV9wbV9y
dW50aW1lX3NldF9hY3RpdmVfZW5hYmxlZCgpCnBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCkKcG1f
cnVudGltZV9wdXRfc3luY19zdXNwZW5kKCkKcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpCgpB
bmQgaG9wZSBub3RoaW5nIGVsc2UgaXMgaG9sZGluZyB0aGUgZGV2aWNlIGFuZCB0aGF0IHJ1bnRp
bWUgUE0gaXMgCmFjdHVhbGx5IGNvbXBpbGVkIGludG8gdGhlIGtlcm5lbC4KCkxpZmUgd291bGQg
YmUgZWFzaWVyIGlmIEkgZXhwb3NlIHRoZSBHU00gcmVzZXQgYml0cyBhcyAjcmVzZXQtY2VsbHMu
IApPdG9oLCBJJ2QgcHJlZmVyIG5vdCB0byBkbyB0aGF0IGZvciBVU0IsIGFzIFVTQiBhbHJlYWR5
IGhhcyAzIGRpZmZlcmVudCAKcmVzZXQgY29udHJvbHMgYWxyZWFkeSBhbmQgYWRkaW5nIGFub3Ro
ZXIgaXMgYXdrd2FyZC4gSSBjb3VsZCBvZiBjb3Vyc2UgCmFsc28gaGlkZSB0aGUgVVNCIHJlc2V0
IGFuZCBleHBvc2UgdGhlIEdTTSByZXNldHMuCgpGb3Igbm93IEkgcG9zdHBvbmVkIHRoZSBpc3N1
ZSBhbmQgZG9uJ3QgYWRkIEdTTSByZWxhdGVkIGNvbnRyb2xzIHRvIHRoZSAKYmluZGluZ3MgYXQg
YWxsLgoKLS0tClN0ZWZhbiBEw7ZzaW5nZXIgKDYpOgogICAgICBkdC1iaW5kaW5nczogc29jOiB6
dGU6IERvY3VtZW50IHp4Mjk3NTIwdjMgc29jc3lzIGNvbnRyb2xsZXIKICAgICAgbWZkOiB6eDI5
NzUyMHYzOiBBZGQgc29jc3lzIHRvIHRoZSBtZmQgaG9zdCBkcml2ZXIKICAgICAgcG1kb21haW46
IHp0ZTogQWRkIGEgengyOTc1MjB2MyBwb3dlciBkb21haW4gZHJpdmVyCiAgICAgIHBoeTogenRl
OiBBZGQgYSB6eDI5IFVTQiBQSFkgZHJpdmVyLgogICAgICBBUk06IGR0czogenRlOiBEZWNsYXJl
IG5vZGVzIHRvIGVuYWJsZSB0aGUgYm9hcmQncyBkd2MyIGNvbnRyb2xsZXIKICAgICAgQVJNOiBk
dHM6IHp0ZTogRGVjbGFyZSB0aGUgSFNJQyBjb250cm9sbGVyIG5vZGUKCiAuLi4vYmluZGluZ3Mv
c29jL3p0ZS96dGUsengyOTc1MjB2My1zb2NzeXMueWFtbCAgICB8IDEwMCArKysrKysrCiBNQUlO
VEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArCiBh
cmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpICAgICAgICAgICAgICB8ICA0MiAr
KysKIGRyaXZlcnMvbWZkL3p0ZS16eDI5NzUyMHYzLWNybS5jICAgICAgICAgICAgICAgICAgIHwg
IDEyICsKIGRyaXZlcnMvcGh5L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDExICsKIGRyaXZlcnMvcGh5L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAxICsKIGRyaXZlcnMvcGh5L3BoeS16eDI5LXVzYi5jICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTgzICsrKysrKysrKysrKysKIGRyaXZlcnMvcG1kb21haW4vS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcG1kb21haW4vTWFrZWZpbGUg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcG1kb21haW4venRlL0tj
b25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgIDE1ICsrCiBkcml2ZXJzL3BtZG9tYWluL3p0
ZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL3BtZG9tYWlu
L3p0ZS96eDI5NzUyMHYzLXBtLWRvbWFpbi5jICAgICAgICB8IDI4NiArKysrKysrKysrKysrKysr
KysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvenRlLHp4Mjk3NTIwdjMtc29jc3lzLmgg
IHwgIDExICsKIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMtcmVzZXQu
aCAgIHwgICAyICsKIDE0IGZpbGVzIGNoYW5nZWQsIDY3MCBpbnNlcnRpb25zKCspCi0tLQpiYXNl
LWNvbW1pdDogZDc4NWQxMzIyMDJlOGU4ZTkzMzM1ZWJmNzRhZDViMjlmY2EwOTUxZgpjaGFuZ2Ut
aWQ6IDIwMjYxMTE3LXp4Mjl1c2ItYzNhOTBhYjU5MzU0CnByZXJlcXVpc2l0ZS1jaGFuZ2UtaWQ6
IDIwMjYxMTA4LXp4MjljbGstM2IwNzNiOWQyMmQ2OnYxNApwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6
IDNlYTRlZDExNTc4NjI1ZDZhYWRmNTljNWI1NDJlNzg4ODgyZWFiMmYKCkJlc3QgcmVnYXJkcywK
LS0gIApTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
