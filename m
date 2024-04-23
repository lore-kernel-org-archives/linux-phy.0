Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E6CEC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7McG9kbIQDwSrI5ztgEWAYjB+fRKkf8uoQfVspj7gY=; b=PGJmcCucBDRrJJ
	lmnXSW170uvXTpn1cLoeHTLcePRMyKA+ug/WwdJnQOK8dVhNGjo9U38DWmXGQzKBK9JeNiaOe8NEy
	uqlq3HRI7h+44iVAWEQN4TPIXYiM/AGL1WktEJg565JhutGJNr0LSogr3C9/O7sX9TGfGQZJcDEM1
	3lkBWe4rK5XYhBZTpInzFmQefhQvKPkif0ujvdTFgr+Zaro7YfJLjj73+z0Ht7gkkm6pa9bNlfZjI
	5XEY4Zrw1UXd8boYO+73VlH6gQ3pjkIhZ3gCxYqkSxkrhpeLIKCaq7zhH9H9tbidJoNzlPIAtGY/t
	zV1wy8MfvmHx/4ot1FoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5y-00000001Sll-2qKv;
	Tue, 23 Apr 2024 20:50:30 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5j-00000001SdN-0uoZ
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:16 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-41a5b68ed5cso28275295e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905413; x=1714510213; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aF9NHKymRNVxjo0ZhdoKVrePsNXjazgjIUR9b5uzSGg=;
        b=nbOi/FcoVS3OtEczXI+qq9hgX/MbrpHjwJ/Ca3avC9mN4mNBG8aqsd6MwqbWTOpHxv
         Ap+NDjRrBJ5S595OtlTzAW5HPmGbb5YjmIWnqTEMNIjV1WS3667ItXzbDSNk6QBPToxf
         OK1zghP0g3BwDlW4yy3LWa415YKy2NHBRlsETZnYfPC1TEtpTdhXa3nounsdaAaNaLdK
         YtA3ZuLyQGxQ1hBETd8BBXV8/CWkxtx4L6zrDJZLH5/h3CAIk24myaGN3QDLOz5kaza9
         HgngPS/ypgtxwoHUxPjDi9kuJQ04tKLKZ5jDAFSna/iQ4DZg+8uJwXDZiWEQmwviqy7u
         0yBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905413; x=1714510213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aF9NHKymRNVxjo0ZhdoKVrePsNXjazgjIUR9b5uzSGg=;
        b=vzJaCppK4zOMBVEMRGfFpVQDKDODZQCybeCo4dKSdHek6fMqzt0hsZjy1z4tamYjeq
         4PuAa5WQX6N8y7x8W8txEzHWWU3P7ltlnY4YRxp17wbIQYfz8cJ+1e8CSakzUY+VNpQF
         PIeTxJdS4M5EQ5LQ30MnuV9ngeetWac4U+7MuRywBrDSeKCWbJBP4JAloylKc96MTZAM
         R+SI8cDGg1xZU9oiRvXy3QBVbh9wDSDqzSsaNNojpXMULXLQ3dT2pZk0+haQnAlOVffB
         ncMW9kvyBg0Wxz2EOWmK3aQ6bAqevGM840hd91DHe4dnUzwhXI3HrZ1xF1fxm0SZcBw/
         P7gw==
X-Forwarded-Encrypted: i=1; AJvYcCXDP8v1xCv1CIcxig8+RPtomNhzPuN8ZqHE3LMERkt6BIXawDkgIG5aIU6kbn9nMwag7jkb4lom7EQbkutFQUrWKpDtzKQx4fghyWso9A==
X-Gm-Message-State: AOJu0YzJqppoMFd6Mkgh9s3vMR5JDy4IePtllEvjtlgeaZc3DcJFOZDU
	g/24+s5Im7kyj9etRGPYAw6DdYBKdsPnhW3Ke9utemC/CdlgCvEyPcJsOvKzSq4=
X-Google-Smtp-Source: AGHT+IGmqS4/bMk98iT3BUK9bGkkdx/i8oY6ffAbC6ME80YJx8+X4z6pBcQdBu6b6rZbGW5YANVlOw==
X-Received: by 2002:a05:600c:4585:b0:41a:9e0b:ae26 with SMTP id r5-20020a05600c458500b0041a9e0bae26mr267973wmo.41.1713905413165;
        Tue, 23 Apr 2024 13:50:13 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:12 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 01/14] dt-bindings: clock: google,gs101-clock:  add HSI2 clock management unit
Date: Tue, 23 Apr 2024 21:49:53 +0100
Message-ID: <20240423205006.1785138-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135015_274789_4FEE1907 
X-CRM114-Status: UNSURE (   9.29  )
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

QWRkIGR0IHNjaGVtYSBkb2N1bWVudGF0aW9uIGFuZCBjbG9jayBJRHMgZm9yIHRoZSBIaWdoIFNw
ZWVkIEludGVyZmFjZQoyIChIU0kyKSBjbG9jayBtYW5hZ2VtZW50IHVuaXQuIFRoaXMgQ01VIGZl
ZWRzIGhpZ2ggc3BlZWQgaW50ZXJmYWNlcwpzdWNoIGFzIFBDSWUgYW5kIFVGUy4KClNpZ25lZC1v
ZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KUmV2aWV3ZWQt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogLi4uL2Jp
bmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sICAgIHwgMzAgKysrKysrKystCiBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oICAgICAgfCA2MyArKysrKysr
KysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkxIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ns
b2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sCmluZGV4IDFkMmJjZWE0MWM4NS4u
OGNiMGFlNGY5OTk2IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvY2xvY2svZ29vZ2xlLGdzMTAxLWNsb2NrLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sCkBAIC0yOSwxNyAr
MjksMTggQEAgcHJvcGVydGllczoKICAgICBlbnVtOgogICAgICAgLSBnb29nbGUsZ3MxMDEtY211
LXRvcAogICAgICAgLSBnb29nbGUsZ3MxMDEtY211LWFwbQorICAgICAgLSBnb29nbGUsZ3MxMDEt
Y211LWhzaTIKICAgICAgIC0gZ29vZ2xlLGdzMTAxLWNtdS1taXNjCiAgICAgICAtIGdvb2dsZSxn
czEwMS1jbXUtcGVyaWMwCiAgICAgICAtIGdvb2dsZSxnczEwMS1jbXUtcGVyaWMxCiAKICAgY2xv
Y2tzOgogICAgIG1pbkl0ZW1zOiAxCi0gICAgbWF4SXRlbXM6IDMKKyAgICBtYXhJdGVtczogNQog
CiAgIGNsb2NrLW5hbWVzOgogICAgIG1pbkl0ZW1zOiAxCi0gICAgbWF4SXRlbXM6IDMKKyAgICBt
YXhJdGVtczogNQogCiAgICIjY2xvY2stY2VsbHMiOgogICAgIGNvbnN0OiAxCkBAIC03Miw2ICs3
MywzMSBAQCBhbGxPZjoKICAgICAgICAgICBpdGVtczoKICAgICAgICAgICAgIC0gY29uc3Q6IG9z
Y2NsawogCisgIC0gaWY6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjb21wYXRpYmxlOgor
ICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgICAgZW51bToKKyAgICAgICAgICAgICAgLSBn
b29nbGUsZ3MxMDEtY211LWhzaTIKKworICAgIHRoZW46CisgICAgICBwcm9wZXJ0aWVzOgorICAg
ICAgICBjbG9ja3M6CisgICAgICAgICAgaXRlbXM6CisgICAgICAgICAgICAtIGRlc2NyaXB0aW9u
OiBFeHRlcm5hbCByZWZlcmVuY2UgY2xvY2sgKDI0LjU3NiBNSHopCisgICAgICAgICAgICAtIGRl
c2NyaXB0aW9uOiBIaWdoIFNwZWVkIEludGVyZmFjZSBidXMgY2xvY2sgKGZyb20gQ01VX1RPUCkK
KyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEhpZ2ggU3BlZWQgSW50ZXJmYWNlIHBjaWUgY2xv
Y2sgKGZyb20gQ01VX1RPUCkKKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEhpZ2ggU3BlZWQg
SW50ZXJmYWNlIHVmcyBjbG9jayAoZnJvbSBDTVVfVE9QKQorICAgICAgICAgICAgLSBkZXNjcmlw
dGlvbjogSGlnaCBTcGVlZCBJbnRlcmZhY2UgbW1jIGNsb2NrIChmcm9tIENNVV9UT1ApCisKKyAg
ICAgICAgY2xvY2stbmFtZXM6CisgICAgICAgICAgaXRlbXM6CisgICAgICAgICAgICAtIGNvbnN0
OiBvc2NjbGsKKyAgICAgICAgICAgIC0gY29uc3Q6IGJ1cworICAgICAgICAgICAgLSBjb25zdDog
cGNpZQorICAgICAgICAgICAgLSBjb25zdDogdWZzX2VtYmQKKyAgICAgICAgICAgIC0gY29uc3Q6
IG1tY19jYXJkCisKICAgLSBpZjoKICAgICAgIHByb3BlcnRpZXM6CiAgICAgICAgIGNvbXBhdGli
bGU6CmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5o
IGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9nb29nbGUsZ3MxMDEuaAppbmRleCAzZGFjMzU3
Nzc4OGEuLmFjMjM5Y2U2ODIxYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9j
ay9nb29nbGUsZ3MxMDEuaAorKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxn
czEwMS5oCkBAIC01MTgsNCArNTE4LDY3IEBACiAjZGVmaW5lIENMS19HT1VUX1BFUklDMV9DTEtf
UEVSSUMxX1VTSTlfVVNJX0NMSwkJNDUKICNkZWZpbmUgQ0xLX0dPVVRfUEVSSUMxX1NZU1JFR19Q
RVJJQzFfUENMSwkJNDYKIAorLyogQ01VX0hTSTIgKi8KKworI2RlZmluZSBDTEtfTU9VVF9IU0ky
X0JVU19VU0VSCQkJCQkJMQorI2RlZmluZSBDTEtfTU9VVF9IU0kyX01NQ19DQVJEX1VTRVIJCQkJ
CTIKKyNkZWZpbmUgQ0xLX01PVVRfSFNJMl9QQ0lFX1VTRVIJCQkJCQkzCisjZGVmaW5lIENMS19N
T1VUX0hTSTJfVUZTX0VNQkRfVVNFUgkJCQkJNAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1BDSUVf
R0VONF8xX1BDSUVfMDAzX1BIWV9SRUZDTEtfSU4JCTUKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9Q
Q0lFX0dFTjRfMV9QQ0lFXzAwNF9QSFlfUkVGQ0xLX0lOCQk2CisjZGVmaW5lIENMS19HT1VUX0hT
STJfU1NNVF9QQ0lFX0lBX0dFTjRBXzFfQUNMSwkJCQk3CisjZGVmaW5lIENMS19HT1VUX0hTSTJf
U1NNVF9QQ0lFX0lBX0dFTjRBXzFfUENMSwkJCQk4CisjZGVmaW5lIENMS19HT1VUX0hTSTJfU1NN
VF9QQ0lFX0lBX0dFTjRCXzFfQUNMSwkJCQk5CisjZGVmaW5lIENMS19HT1VUX0hTSTJfU1NNVF9Q
Q0lFX0lBX0dFTjRCXzFfUENMSwkJCQkxMAorI2RlZmluZSBDTEtfR09VVF9IU0kyX0RfVFpQQ19I
U0kyX1BDTEsJCQkJCTExCisjZGVmaW5lIENMS19HT1VUX0hTSTJfR1BDX0hTSTJfUENMSwkJCQkJ
MTIKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9HUElPX0hTSTJfUENMSwkJCQkJMTMKKyNkZWZpbmUg
Q0xLX0dPVVRfSFNJMl9IU0kyX0NNVV9IU0kyX1BDTEsJCQkJMTQKKyNkZWZpbmUgQ0xLX0dPVVRf
SFNJMl9MSE1fQVhJX1BfSFNJMl9JX0NMSwkJCQkxNQorI2RlZmluZSBDTEtfR09VVF9IU0kyX0xI
U19BQ0VMX0RfSFNJMl9JX0NMSwkJCQkxNgorI2RlZmluZSBDTEtfR09VVF9IU0kyX01NQ19DQVJE
X0lfQUNMSwkJCQkJMTcKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9NTUNfQ0FSRF9TRENMS0lOCQkJ
CQkxOAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1BDSUVfR0VONF8xX1BDSUVfMDAzX0RCSV9BQ0xL
X1VHCQkJMTkKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9QQ0lFX0dFTjRfMV9QQ0lFXzAwM19NU1RS
X0FDTEtfVUcJCQkyMAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1BDSUVfR0VONF8xX1BDSUVfMDAz
X1NMVl9BQ0xLX1VHCQkJMjEKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9QQ0lFX0dFTjRfMV9QQ0lF
XzAwM19JX0RSSVZFUl9BUEJfQ0xLCQkyMgorI2RlZmluZSBDTEtfR09VVF9IU0kyX1BDSUVfR0VO
NF8xX1BDSUVfMDA0X0RCSV9BQ0xLX1VHCQkJMjMKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9QQ0lF
X0dFTjRfMV9QQ0lFXzAwNF9NU1RSX0FDTEtfVUcJCQkyNAorI2RlZmluZSBDTEtfR09VVF9IU0ky
X1BDSUVfR0VONF8xX1BDSUVfMDA0X1NMVl9BQ0xLX1VHCQkJMjUKKyNkZWZpbmUgQ0xLX0dPVVRf
SFNJMl9QQ0lFX0dFTjRfMV9QQ0lFXzAwNF9JX0RSSVZFUl9BUEJfQ0xLCQkyNgorI2RlZmluZSBD
TEtfR09VVF9IU0kyX1BDSUVfR0VONF8xX1BDU19QTUFfUEhZX1VEQkdfSV9BUEJfUENMSwkJMjcK
KyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9QQ0lFX0dFTjRfMV9QQ1NfUE1BX1BJUEVfUEFMX1BDSUVf
SV9BUEJfUENMSwkyOAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1BDSUVfR0VONF8xX1BDU19QTUFf
UENJRVBIWTIxMFgyX1FDSF9JX0FQQl9QQ0xLCTI5CisjZGVmaW5lIENMS19HT1VUX0hTSTJfUENJ
RV9JQV9HRU40QV8xX0lfQ0xLCQkJCTMwCisjZGVmaW5lIENMS19HT1VUX0hTSTJfUENJRV9JQV9H
RU40Ql8xX0lfQ0xLCQkJCTMxCisjZGVmaW5lIENMS19HT1VUX0hTSTJfUFBNVV9IU0kyX0FDTEsJ
CQkJCTMyCisjZGVmaW5lIENMS19HT1VUX0hTSTJfUFBNVV9IU0kyX1BDTEsJCQkJCTMzCisjZGVm
aW5lIENMS19HT1VUX0hTSTJfUUVfTU1DX0NBUkRfSFNJMl9BQ0xLCQkJCTM0CisjZGVmaW5lIENM
S19HT1VUX0hTSTJfUUVfTU1DX0NBUkRfSFNJMl9QQ0xLCQkJCTM1CisjZGVmaW5lIENMS19HT1VU
X0hTSTJfUUVfUENJRV9HRU40QV9IU0kyX0FDTEsJCQkJMzYKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJ
Ml9RRV9QQ0lFX0dFTjRBX0hTSTJfUENMSwkJCQkzNworI2RlZmluZSBDTEtfR09VVF9IU0kyX1FF
X1BDSUVfR0VONEJfSFNJMl9BQ0xLCQkJCTM4CisjZGVmaW5lIENMS19HT1VUX0hTSTJfUUVfUENJ
RV9HRU40Ql9IU0kyX1BDTEsJCQkJMzkKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9RRV9VRlNfRU1C
RF9IU0kyX0FDTEsJCQkJNDAKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9RRV9VRlNfRU1CRF9IU0ky
X1BDTEsJCQkJNDEKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9DTEtfSFNJMl9CVVNfQ0xLCQkJCQk0
MgorI2RlZmluZSBDTEtfR09VVF9IU0kyX0NMS19IU0kyX09TQ0NMS19DTEsJCQkJNDMKKyNkZWZp
bmUgQ0xLX0dPVVRfSFNJMl9TU01UX0hTSTJfQUNMSwkJCQkJNDQKKyNkZWZpbmUgQ0xLX0dPVVRf
SFNJMl9TU01UX0hTSTJfUENMSwkJCQkJNDUKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9TWVNNTVVf
SFNJMl9DTEtfUzIJCQkJNDYKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9TWVNSRUdfSFNJMl9QQ0xL
CQkJCQk0NworI2RlZmluZSBDTEtfR09VVF9IU0kyX1VBU0NfUENJRV9HRU40QV9EQklfMV9BQ0xL
CQkJNDgKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9VQVNDX1BDSUVfR0VONEFfREJJXzFfUENMSwkJ
CTQ5CisjZGVmaW5lIENMS19HT1VUX0hTSTJfVUFTQ19QQ0lFX0dFTjRBX1NMVl8xX0FDTEsJCQk1
MAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1VBU0NfUENJRV9HRU40QV9TTFZfMV9QQ0xLCQkJNTEK
KyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9VQVNDX1BDSUVfR0VONEJfREJJXzFfQUNMSwkJCTUyCisj
ZGVmaW5lIENMS19HT1VUX0hTSTJfVUFTQ19QQ0lFX0dFTjRCX0RCSV8xX1BDTEsJCQk1MworI2Rl
ZmluZSBDTEtfR09VVF9IU0kyX1VBU0NfUENJRV9HRU40Ql9TTFZfMV9BQ0xLCQkJNTQKKyNkZWZp
bmUgQ0xLX0dPVVRfSFNJMl9VQVNDX1BDSUVfR0VONEJfU0xWXzFfUENMSwkJCTU1CisjZGVmaW5l
IENMS19HT1VUX0hTSTJfVUZTX0VNQkRfSV9BQ0xLCQkJCQk1NgorI2RlZmluZSBDTEtfR09VVF9I
U0kyX1VGU19FTUJEX0lfQ0xLX1VOSVBSTwkJCQk1NworI2RlZmluZSBDTEtfR09VVF9IU0kyX1VG
U19FTUJEX0lfRk1QX0NMSwkJCQk1OAorI2RlZmluZSBDTEtfR09VVF9IU0kyX1hJVV9EX0hTSTJf
QUNMSwkJCQkJNTkKKyNkZWZpbmUgQ0xLX0dPVVRfSFNJMl9YSVVfUF9IU0kyX0FDTEsJCQkJCTYw
CisKICNlbmRpZiAvKiBfRFRfQklORElOR1NfQ0xPQ0tfR09PR0xFX0dTMTAxX0ggKi8KLS0gCjIu
NDQuMC43NjkuZzNjNDA1MTY4NzQtZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
