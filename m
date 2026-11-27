Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31CF606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 10:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tG2fJnkg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=a4FI3jym
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xU+ysLsn+m1m+yLmB24Ynj02upslzBb8K3x8H4HlXmw=; b=tG2fJnkgTxGlYl/WDbxRjPfhlo
	ZBvKh/NUxpNCt75B5Mg8AYpitxrmwipyas6JL6s0JGzRl1yZH4cajwYzWeb+Rvsvb0bdbKe923P0I
	UOyWO7gFTTfA1CAlSbPl1XoH5G0DXWYOQWCgL4Wy8nM6ncpfjefBf/6mr/PqBEsWUx11yYWe+cBez
	kwJcKXqWahVDSV3rmH3HnIgAaGRctZNAXZdQ3LDXPhJeibAA4zHnbCqA6e4cRZn8Z/tuGHu1jSJVM
	0EiZuuptaVuwwBjXViwQoQ/K6uuIzLLAxj7VAX6j8+7XtxpHcoRY4Weg3F/8zXW6ye92Cr4ZsLQqV
	Da2p3CqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtNh-0000000FdPB-2RHP;
	Fri, 27 Nov 2026 10:40:43 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtNT-0000000FdIz-0z5W
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 10:40:28 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6b894a5ce3dso2031764a12.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 02:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795776025; x=1796380825; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0MjmSAAhpe5cqP7I84bvnQ40cKtlwbqwpo+pqHT1S+8=;
        b=a4FI3jym0q52MOMUaDW2vLd32S9+AzzFffSLYsr6x6xQHT7ZXkebrM120AS/gh15ap
         7BJGPmI63ta5u5I/XPkcG87I63D0BBMxz90kMKpMb0THQW9LKxXpAmLZIEB90YTjGQmp
         DmqJRPSPk+lt3kBEDMP/3kUrsk0onpAy+qr+rc89zw0y6SRS2LCP36+gZMLR8SrNlf8c
         hgl8PR8Ev1QkQ5r/LYR8b9ZLvuvkz7KhyfYkiFpW5enCcCYYswFGoVy6lqDDlewbGN74
         pOmyoWt26mT9RBO6hD2y6dXWLYflOtHiwfsZBSXskQbRSLInmOro1+jakdLoaLnVfonx
         BXrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795776025; x=1796380825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0MjmSAAhpe5cqP7I84bvnQ40cKtlwbqwpo+pqHT1S+8=;
        b=b+CgO4Q2hRN9mECMVS33TiUzmJ9PG86CrTD967T4O0jkTf259LlSp6t2X6krDc1tJs
         WFhAPC4LThJBJrGVBn4YbUaxebv0UhVkvodETbBR2mN3yypxR4Wa2b9t4noVO2GwBo9U
         GU4nVPAklBXnHJVlmIicISQGu7IGYKqla4jBDmlSLKPQZMRGEZz/1LnLDoKFd2e0I8hg
         mJkug+0tDuFeTiMugnmVOp8f6+/YkcrGQTB7vSYxUd8DEL4x3PntahYbVYRYwYSwvCFa
         AhBImwM6cmMxKwXURxjLDYy52+aB+UWBMLT5QsBMGGZaLvKHUFiK95AlWgiOHLwIzCmW
         6A4w==
X-Forwarded-Encrypted: i=1; AL+hErEkylMp6d+f8iZxu8mTISfuahpwTm2Q/uIZLY4wwrekqKPD/EIhtyVcIJvwsaPk0ePtm/SSQuUXFqI=@lists.infradead.org
X-Gm-Message-State: APuU4Z8ddO9FQ15CiXLEEKcdwkkp55jqN5OBQeHBL3fXPkolX0Wq7oUc
	8kexC8MhkI7jRhBG/CuGzj8S1QpeT9WnfvKpvyLAdaQ89/dWH79guC0g03VbqCXCnZM=
X-Gm-Gg: AZFdTZcxsI/2/if+eVwM9GYbzzxuszR6z4M2g78RikkIVC0f2kpflN+8SwwAhRKO7zN
	zU4g44Q1EFhM8M4Jy7FaoG28XjK3GXTExZ1ePqZoLwx8yhQdBmuAIsK7K5h4GC7e04kl+d7TDo8
	DWm9fkSledqJ0yjdMeeypj5sTzjKSGUBYp/Jd1XhIMdR4kwhCgUzrJqFsWI85Y4FwOBOKD2GNZG
	wFdLr3n1LaIYZ+11IvRHWDg4WBFhWwe/yQ4dfxFtpKxbcEP0LJLK6BWhPiA+ilzbd8hASbdvaA5
	qR2IFGEaJ4Nfsjp16kQQVj3KC7jdh6OGgDNFcUOdc3xb2Ab3KBDylc4Luh7vDiM9mAJmkvziZXg
	h7DXZ++//D1tkLV+PYWNaLAwjlJj7T0sv2/wIWpeiXAGQYSjtE076OguFXLRyd+Mygy5La6uqNt
	GHDhqd+SRs7hPmXvc17zjEJ7eguOAwCKQbYeJF7cKwzC6ZdnJw/5iEXXDIX3QA1h9LhkatMXj9n
	aoEOTQ8y/WRt0t8LjoOx7Atx7ywE4TmOSWQhvlNeWy56s0fLm8qWS5QAeAdaYM1wqHFYAX6x2Mt
	nfz9O6AlLIjx6V+KiRrbzHoc33+a6q/u+SA3xeyRBQpxZ2ycVLrZhriq+i0mRtqQTok3q76FRZr
	lSpxzYN02G8nP5m79AVTJIKfBaum0KMzSdeV4mtg=
X-Received: by 2002:aa7:d353:0:b0:6ba:22f7:189e with SMTP id 4fb4d7f45d1cf-6ba37d63cdbmr12166261a12.7.1795776025312;
        Fri, 27 Nov 2026 02:40:25 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6bb11ff543fsm3919199a12.2.2026.11.27.02.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 02:40:24 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Nov 2026 10:40:21 +0000
Subject: [PATCH 1/3] phy: samsung: gs101-ufs: terminate pre_pwr_hs config
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-gs101-ufs-phy-oob-v1-1-144b0e04c3a8@linaro.org>
References: <20261127-gs101-ufs-phy-oob-v1-0-144b0e04c3a8@linaro.org>
In-Reply-To: <20261127-gs101-ufs-phy-oob-v1-0-144b0e04c3a8@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-hardening@vger.kernel.org, 
 llvm@lists.linux.dev, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_024027_292430_1D7AC542 
X-CRM114-Status: UNSURE (   8.37  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Qm9vdGluZyBhIGdzMTAxIHBsYXRmb3JtIHdpdGggS0FTQU4gdHJpZ2dlcnMgYSBnbG9iYWwtb3V0
LW9mLWJvdW5kcwpyZWFkIGR1cmluZyBVRlMgUEhZIGNhbGlicmF0aW9uOgoKICAgIEJVRzogS0FT
QU46IGdsb2JhbC1vdXQtb2YtYm91bmRzIGluCiAgICAgc2Ftc3VuZ191ZnNfcGh5X2NhbGlicmF0
ZSsweDE0NC8weDUzMAogICAgUmVhZCBvZiBzaXplIDEgYXQgYWRkciBmZmZmODAwMDgyNWE4OTRk
IGJ5IHRhc2sgKHVkZXYtd29ya2VyKS8xNzkKICAgIENhbGwgdHJhY2U6CiAgICAga2FzYW5fcmVw
b3J0KzB4YjAvMHgxMDgKICAgICBfX2FzYW5fbG9hZDErMHg5OC8weGEwCiAgICAgc2Ftc3VuZ191
ZnNfcGh5X2NhbGlicmF0ZSsweDE0NC8weDUzMAogICAgIHBoeV9jYWxpYnJhdGUrMHg3MC8weGMw
CiAgICAgZXh5bm9zX3Vmc19wcmVfcHdyX21vZGUrMHgyODAvMHgyYjAgW3Vmc19leHlub3NdCiAg
ICAgZXh5bm9zX3Vmc19wd3JfY2hhbmdlX25vdGlmeSsweDIwOC8weDJiOCBbdWZzX2V4eW5vc10K
ICAgICB1ZnNoY2RfY2hhbmdlX3Bvd2VyX21vZGUrMHg1OC8weGQwCiAgICAgdWZzaGNkX2NvbmZp
Z19wd3JfbW9kZSsweGY0LzB4MWYwCiAgICAgdWZzaGNkX3Bvc3RfZGV2aWNlX2luaXQrMHgyZmMv
MHg0YzgKICAgICB1ZnNoY2RfaW5pdCsweDEyYmMvMHgxOGEwCiAgICAgdWZzaGNkX3BsdGZybV9p
bml0KzB4MjAwLzB4M2QwCiAgICAgZXh5bm9zX3Vmc19wcm9iZSsweDQ4LzB4YTAgW3Vmc19leHlu
b3NdCiAgICBUaGUgYnVnZ3kgYWRkcmVzcyBiZWxvbmdzIHRvIHRoZSB2YXJpYWJsZToKICAgICB0
ZW5zb3JfZ3MxMDFfcHJlX3B3cl9oc19jb25maWcrMHgyZC8weDQwCgpzYW1zdW5nX3Vmc19waHlf
Y2FsaWJyYXRlKCkgaXRlcmF0ZXMgdGhyb3VnaCBlYWNoIGNvbmZpZ3VyYXRpb24gdGFibGUKd2l0
aCBmb3JfZWFjaF9waHlfY2ZnKCksIHN0b3BwaW5nIG9ubHkgd2hlbiBjZmctPmlkIGlzIDAuCnRl
bnNvcl9nczEwMV9wcmVfcHdyX2hzX2NvbmZpZ1tdIG9taXRzIHRoZSBFTkRfVUZTX1BIWV9DRkcg
c2VudGluZWwsCnNvIHRoZSBsb29wIHJlYWRzIHBhc3QgdGhlIGVuZCBvZiB0aGUgdHdvLWVsZW1l
bnQgYXJyYXkgaW50byBhZGphY2VudAptZW1vcnkgKG9mZnNldCAweDJkIGlzIGNmZ1syXS5pZCku
CgpBZGQgdGhlIG1pc3NpbmcgRU5EX1VGU19QSFlfQ0ZHIHRlcm1pbmF0b3IgdG8KdGVuc29yX2dz
MTAxX3ByZV9wd3JfaHNfY29uZmlnW10uCgpGaXhlczogYzFjZjcyNWRiMTA2ICgicGh5OiBzYW1z
dW5nLXVmczogdWZzOiBBZGQgc3VwcG9ydCBmb3IgZ3MxMDEgVUZTIHBoeSB0dW5pbmciKQpDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWdzMTAx
LXVmcy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1nczEwMS11ZnMuYyBiL2RyaXZlcnMvcGh5L3NhbXN1
bmcvcGh5LWdzMTAxLXVmcy5jCmluZGV4IGExNWUxZjQ1M2Y3Zi4uZDRhZjk0ZjNmZWQ0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1nczEwMS11ZnMuYworKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1nczEwMS11ZnMuYwpAQCAtOTgsNiArOTgsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHNhbXN1bmdfdWZzX3BoeV9jZmcgdGVuc29yX2dzMTAxX3ByZV9pbml0X2NmZ1td
ID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX3Vmc19waHlfY2ZnIHRlbnNvcl9nczEw
MV9wcmVfcHdyX2hzX2NvbmZpZ1tdID0gewogCVBIWV9UUlNWX1JFR19DRkdfR1MxMDEoMHgzNjks
IDB4MTEsIFBXUl9NT0RFX0FOWSksCiAJUEhZX1RSU1ZfUkVHX0NGR19HUzEwMSgweDI0NiwgMHgw
MywgUFdSX01PREVfQU5ZKSwKKwlFTkRfVUZTX1BIWV9DRkcsCiB9OwogCiAvKiBDYWxpYnJhdGlv
biBmb3IgSFMgbW9kZSBzZXJpZXMgQS9CICovCgotLSAKMi41Ni4xLjgzOS5nMjJhODI5MGRiOS1n
b29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
