Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FDD606A6DD
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WXRqwT5q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tiFRRwvJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EGcXFeGFCZt2ZlBdbab4xlvWIAy679igVxmKu2YfEiE=; b=WXRqwT5q7lVio0SccUsL/vh73d
	DUUMhLMiJpkJdqFCAGDZw6p4spGaHvNDZaGSxvBDWklM0kMuGQer5PuIgk74/9dVHQ2kIf13oB6WC
	ul568giOGvnag0Raflla1FZq/kKxQDgVQM6/Ao0Y9i3gMCO0Xua0di6uw4mGwvGHDLIQNIIJHKYRN
	scmmUdScIhdYWrIqX1w1AiAfvUmO0V4gupFEjU+Vw8TXzOtXmx30+YC4v0ACkQs619+4XyiSii7ku
	9xJLJ/7KD5jrtvWPRcej8JfXIfNvUh7UWVxsccCmigaOlKTMk69d3P2FZV+zXQ/HHf3ewsJummeXO
	7IaMrHLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUBU-0000000G4AN-2Gbg;
	Fri, 20 Nov 2026 19:22:08 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUB1-0000000G40c-3PbG
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:21:52 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4bb77a462c6so18992355e9.1
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 11:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795202498; x=1795807298; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qEVHtiKYBLIel8um/QH5PKwY2ZuAggHrE4chfoek6uE=;
        b=tiFRRwvJQ1RfN6qlRoElbDW9FaYjl4al6U/CdYComqhOadg2horLtGB851GF28lamF
         gwNaHInOSRAeKj0plOLB3UxdsEVsE9QsLlEZYm0iOVSosw5yt8iNQ+Wbelep9z51GMTr
         GTR+pvzK7LCsMkzId83NYqd2DsJrNFFr8Nn9uUkhbSq1xgZOIei4utxePGvjcod3GgMl
         2A4yCVwKGpf1LY5XYcH967mnXKxADou3xQUqqNNaIGGTh4rvqhp+5jBVEsKuioGNQvmA
         HH1IftO1T5PECS/HyiF59LJplDraPQutTlC/bMeBWMZB6HkWOyau4yZKm4Zidtm7udx5
         QShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795202498; x=1795807298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qEVHtiKYBLIel8um/QH5PKwY2ZuAggHrE4chfoek6uE=;
        b=AjsugU/EwoOWvUTEbwXEiJ6JrrsPTiJ4VhKgsuG3FtQ+8R8eCT3WtnY8v02DrkoKqS
         v4gzZjtXt/sbyWmd9Fs49e+7M6cH2OUqVt2vAVRbi8NxjHljV+7Tafum9o6UO/HB+yd3
         TCdTD1FtJF5vwXQuoMOaRg6GT7nNxwdD2crSmEvnYmm/B8rIn48id65yzL8lrTEBfelZ
         Mx+xcaXkDauelgn6cqDs1CV6iETn2sIIN/t9c8kFCHMSJHbF8xLBw80wQ+uvQipzPr/p
         MZHqBpawuGL3RkUf0nDRjQ280GhueZCV+lbF5qAUd81aQA/QkWnfN0Q1YTXEnP405fTP
         WwFQ==
X-Forwarded-Encrypted: i=1; AL+hErGR7B1V3sJSCkm2Iqd6AlK7CNHzCf8HeD+Z1V712weWe0d4e9muEKZcj1Q4uhQbQNz11R4ZF7ev/BQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z/49Rb+eHb53dtNx3mfXHZX56Zaxsa/FhbjvVHTgpeCT9BwpZ/r
	GMJdM0V2AkvTvVOb1yWXMAgKJFUWAbmFT66TSGJThjdFKoQgZt/cePjL
X-Gm-Gg: AYBFou2M6yutPUeOCAB8oSmofBIr3dWrfcGrUQ1gZprEz3ZZ+oeRiAIuhh4/L52QeOK
	d4MEPkyQLSOakgqPMdYY0iadhJcr937MHWRIl9clVNejhQ0VF0RGYCgxZOZglRG4MC4mnNBdnlw
	3nMbnmg7tAzkTF8oAR3BxzxL0pZPjgRHkmelQsRWBXuA6LDn5amnag7t5MGgHEx1jblmreS1OZI
	KdWaKAF86tTaIMHHGc5DdDxlSdsgZakMtYuI7O7oeKCl54pSfyBW3fGs08fkU7cx014hY0tWt17
	BDmBWWWpI2qElcheb6lgVAojKISS4Il3ivswLNkpLzgh8l0MvvPpADQrEes89EtpYM7t5NRRqNq
	Tyy45KTJm2+ftLC54L2rKQOdfc2pVnsrcGTWswrrsp0bBs0R6YzEWhRtr6XDR+BEbgen0ZsXnBO
	4SbvQ+ZiwGCpCZ+oscBXQ+DHK9+xkHUVGzNqstp4INhi9lhZEG6Qj58FOeOYX5p7j7xNZkBH/TF
	lV5bE3paJDOFGcZ5se5O8zna5enYPYIbX/A5TlAWgHrtr2gD+JQDaI7eSnDT27YP9gZuW6UAPaA
	HBIjuRUeLndjqYb/9y4OPN5fAKpwL7Es5qHxfQdY
X-Received: by 2002:a05:600c:a085:b0:4bb:85d9:156e with SMTP id 5b1f17b1804b1-4bb8880fe46mr94748195e9.11.1795202497703;
        Fri, 20 Nov 2026 11:21:37 -0800 (PST)
Received: from [192.168.0.2] ([197.250.160.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f204sm8405703f8f.21.2026.11.20.11.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 11:21:37 -0800 (PST)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Fri, 20 Nov 2026 22:20:55 +0300
Subject: [PATCH 6/6] ARM: dts: zte: Declare the HSIC controller node
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-zx29usb-v1-6-b0433258e51b@gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
In-Reply-To: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1349;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=ShJdMtJccnJuS9VlQL1+Bdgxlkv6uh6Giop1oqviKs0=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBrAJ2XBrdRPG9C3eFKyU7PnA49Uabdls/WYzMcO
 WkzRMyqm46JAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCawCdlxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiK5Iw//cCN+OqmdHZIesFYbXSmmMdBzwCEi/5E
 A++ezMAgQAwIgDawlimHqrPh8v7KOZ21+gTKfEh7ncmonS3duzqqXvwBNE0ZWZJLuI6VB8oQrxR
 Spms7VnDkKnCWCJY9lwTNTZHiR06DLnlF+2DrauSlWa/6nEsPpIeO5t7IjWkdMC82Nx45kt2kTi
 CRIMWib3xl/OUol5GZ0JplSVHjEeawQNpdTHI9+iaGClORXVFFm6BL5FN+h7/OCFmRt7iqFhrg7
 3637vNdQgvX0WkYq1tg/tCsBt70ZDMbsgxdrD88lrKg1DvkCToKB5r5+KK2TlKEXAz8P1c6z/ug
 4R8tFWrCZxsZkzFTb1a8eLWVt8/3dI99n+163gd1Zu+4t3/AksqtGaMDgXA5ERJ2shUqZhFs/Xb
 q8G4njYOSnTSmqKoYENf/26Kw24xW/ttjqcWploIYjRp7vR82311DAoRXKTzhKZODzPbWYliMj4
 RJtZCS3ZazBCo84x1e5pyyQbQV+tcj8HuVm5jSfvIf2KqK6q7TvAYnooGaIrQo0Yu4LscP8xmwI
 ToFA0xXUfKHLdUVApN4c9tawezCexUY6fasofMNz7kToQ4wuTsKTm9NEFut8zjOFqv5m+xBpEAA
 Hrwn4mejfFyqzdQpJuSwZcy/rL9bARrA+TKCmztVmIi69bu2+A14=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_112147_754896_74436E99 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhpcyBpcyBmb3IgZG9jdW1lbnRhdGlvbiBwdXJwb3Nlcy4gSSBoYXZlIG5vdCBzZWVuIGFueSBi
b2FyZCB5ZXQgdGhhdAphY3R1YWxseSBjb25uZWN0cyBhbnl0aGluZyB0byBpdC4gT24gbmV3ZXIg
Ym9hcmRzIGl0IHNlZW1zIHRvIGJlIHJlbW92ZWQKZW50aXJlbHkuCgpTaWduZWQtb2ZmLWJ5OiBT
dGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgfCAxOSArKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1
MjB2My5kdHNpCmluZGV4IDJmYzg4OGIxMDAwNi4uNTZkNmI0NmE4ZWQxIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kKQEAgLTE5OSw1ICsxOTksMjQgQEAgdXNiQDE1MDAwMDAg
ewogCQkJcGh5cyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVVNCX1BIWT47CiAJCQlwaHktbmFtZXMg
PSAidXNiMi1waHkiOwogCQl9OworCisJCS8qIFRoZSBIU0lDIGNvbnRyb2xsZXIgZXhpc3RzIHBy
aW1hcmlseSBvbiBvbGRlciBoYXJkd2FyZSwgYnV0IEkgaGF2ZW4ndCBzZWVuIGFueQorCQkgKiBk
ZXZpY2UgdGhhdCBpcyBhY3R1YWxseSBjb25uZWN0ZWQgdG8gaXQgb24gYW55IGJvYXJkLgorCQkg
Ki8KKwkJdXNiQDE2MDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3YzIiOworCQkJcmVn
ID0gPDB4MDE2MDAwMDAgMHg0MDAwMD47CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDQgSVJR
X1RZUEVfTEVWRUxfSElHSD47CisJCQljbG9ja3MgPSA8JnRvcGNybSBaWDI5NzUyMFYzX0hTSUNf
V0NMSz4sIDwmdG9wY3JtIFpYMjk3NTIwVjNfSFNJQ19QQ0xLPjsKKwkJCWNsb2NrLW5hbWVzID0g
Im90ZyIsICJ1dG1pIjsKKwkJCWRyX21vZGUgPSAiaG9zdCI7CisJCQlyZXNldHMgPSA8JnRvcGNy
bSBaWDI5NzUyMFYzX0hTSUNfUkVTRVQ+OworCQkJcmVzZXQtbmFtZXMgPSAiZHdjMiI7CisJCQlw
b3dlci1kb21haW5zID0gPCZzb2NzeXMgWlgyOTc1MjBWM19QRF9VU0I+OworCQkJcGh5cyA9IDwm
dG9wY3JtIFpYMjk3NTIwVjNfSFNJQ19QSFk+OworCQkJcGh5LW5hbWVzID0gInVzYjItcGh5IjsK
KworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKIAl9OwogfTsKCi0tIAoyLjU2LjEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
