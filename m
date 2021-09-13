Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1670DC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDF4B60FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:00:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CDF4B60FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbPOeRTkwV85MQSOY3Lcmfli9n/4d6CndPYUfRqaYYY=; b=cj5okb2i+0Mo1v
	v0HJ4BWgVd+8PGOjBEJm7f5ku/JKjAOwYEXs0dAY4Wg8UjhySwV3z6Qbe12ZbRmhogXlTh7BN28AY
	QQtqWR+PLDr16H2RpWcELPliZb/afLN7Qpq1yVcyic68w18bn1+5wK7Ovybj49Kiv6Rdrq3IqmPVF
	lzsglN/woCwP7nZ1iwJkqfnZAi6eyziqOIolQ/e1pDla0o52VhxLamb1JMsM0PJITJH9xBVQn9E3v
	PZ1pmCSVkkJmc3mVeF15f0Pc2jdhLdNq92TcNspKAdqcTFgzw7YAvpbYkyssMz8iDqtqlIhDeZuLB
	tjGLE6kRJLS3Qm4hnUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgtP-000c0u-DA; Mon, 13 Sep 2021 08:00:43 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgtM-000byw-1k
 for linux-phy@lists.infradead.org; Mon, 13 Sep 2021 08:00:41 +0000
Received: by mail-lf1-x136.google.com with SMTP id i4so2114434lfv.4
 for <linux-phy@lists.infradead.org>; Mon, 13 Sep 2021 01:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8Y5f7mSG/Z4kpKHyPCOHxfNeioXgmOEZEZUSqKOsaYE=;
 b=MOvB4u7DxrRG7GkuoSJRj4wpNAKnTOeqOwRc//qPvxb/IRzRrmzB9442GS8q32GPQ7
 rUyffWyQHt6jhfwciVi5YscsZFFJExuTzSqHxox7Tzznwb/0JZLiowNuMHuoOP21CvTy
 TUVWzwfpgnx5ztrve/gNVenPJdy1ebq8yLWbdNuaR08XmzdLaDC4GxrItTMvHbrsEEU7
 +6wAV4ab/J2HfYEZUHn9ybpb9K4gxbJyjomeCjN48851sT5HhgA/lEo23gT7+bVSX7uQ
 UOno0QDQUB/CbylaiaLwaPwUid6uwaewz5GcFlZ+vhxORjiudNO/QVmP++lMn1vffxwW
 sMtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8Y5f7mSG/Z4kpKHyPCOHxfNeioXgmOEZEZUSqKOsaYE=;
 b=OxQuCRwmGnR4xYRy+Omfi1OAQRgl41t+oPusyfdhiNyC6AJqqQ2cnC9Dft6xG28UdU
 /7H2E+uHQdtdWlb0ueBJBbONVCINT5fwBmY+UR25EBS0py9lg/DKQXt5gtopDJwLDJ/G
 wmo/AwlmAW4sjYSB1jnhjn1OE7C0p3xNP1c9LPSylYjbZ+kIytLVOqYiMgMvFVAtlWaU
 4YGCwyywGRiW8ZNFhCIesmy1HEriF6j/gUnXUEfWm336tiKd0fzG7Le/6JjqTZsasWUY
 9tOb21PiJwmw3lc1bMLU3BLgPGg28PCxGesHaNaSE/ugxGEBfYWA7B9W3JaH5VG4pPkq
 CI7w==
X-Gm-Message-State: AOAM530GSTjieKovlbkhvJT5fHtVgF064Q2VdRRRSxQ3P2At4WVjXdtG
 uQkIij7tu4e4EkJSzcLif0c=
X-Google-Smtp-Source: ABdhPJyPCwAiyRpWpSima2Twrhc/9WwN43NHYTDarTV3e5vdg9OWv7I4NVTpYnicJ9h8qzcGAzDEMg==
X-Received: by 2002:a05:6512:3c99:: with SMTP id
 h25mr7946722lfv.640.1631520038031; 
 Mon, 13 Sep 2021 01:00:38 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 01:00:37 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 4/4] phy: bcm-ns-usb2: support updated DT binding with PHY reg
 space
Date: Mon, 13 Sep 2021 10:00:24 +0200
Message-Id: <20210913080024.6951-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_010040_194518_CB8EB58E 
X-CRM114-Status: GOOD (  16.96  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVXBkYXRlZCBEVCBiaW5k
aW5nIG1hcHMganVzdCBhIFBIWSdzIHJlZ2lzdGVyIHNwYWNlIGluc3RlYWQgb2YgdGhlIHdob2xl
CkRNVSBibG9jay4gQWNjZXNzaW5nIGEgY29tbW9uIENSVSByZWcgaXMgaGFuZGxlZCB1c2luZyBz
eXNjb24gJgpyZWdtYXAuCgpUaGUgb2xkIGJpbmRpbmcgaGFzIGJlZW4gZGVwcmVjYXRlZCBhbmQg
cmVtYWlucyBzdXBwb3J0ZWQgYXMgYSBmYWxsYmFjawptZXRob2QuCgpTaWduZWQtb2ZmLWJ5OiBS
YWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogZHJpdmVycy9waHkvYnJvYWRj
b20vcGh5LWJjbS1ucy11c2IyLmMgfCA1MiArKysrKysrKysrKysrKysrKysrKystLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMgYi9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwppbmRleCA0YjAxNWI4YTcxYzMuLjk4ZDMyNzI5YTQ1
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMKKysr
IGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMKQEAgLTksMTcgKzksMjMg
QEAKICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2Vyci5oPgorI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KICNpbmNs
dWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+CiAjaW5j
bHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+CiAj
aW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CisjaW5jbHVkZSA8bGludXgvcmVnbWFw
Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgogCiBzdHJ1Y3QgYmNtX25zX3VzYjIgewogCXN0
cnVjdCBkZXZpY2UgKmRldjsKIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwogCXN0cnVjdCBwaHkgKnBo
eTsKKwlzdHJ1Y3QgcmVnbWFwICpjbGtzZXQ7CisJdm9pZCBfX2lvbWVtICpiYXNlOworCisJLyog
RGVwcmVjYXRlZCBiaW5kaW5nICovCiAJdm9pZCBfX2lvbWVtICpkbXU7CiB9OwogCkBAIC0yNyw3
ICszMyw2IEBAIHN0YXRpYyBpbnQgYmNtX25zX3VzYjJfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5
KQogewogCXN0cnVjdCBiY21fbnNfdXNiMiAqdXNiMiA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwog
CXN0cnVjdCBkZXZpY2UgKmRldiA9IHVzYjItPmRldjsKLQl2b2lkIF9faW9tZW0gKmRtdSA9IHVz
YjItPmRtdTsKIAl1MzIgcmVmX2Nsa19yYXRlLCB1c2IyY3RsLCB1c2JfcGxsX25kaXYsIHVzYl9w
bGxfcGRpdjsKIAlpbnQgZXJyID0gMDsKIApAQCAtNDQsNyArNDksMTAgQEAgc3RhdGljIGludCBi
Y21fbnNfdXNiMl9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCiAJCWdvdG8gZXJyX2Nsa19vZmY7
CiAJfQogCi0JdXNiMmN0bCA9IHJlYWRsKGRtdSArIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0wp
OworCWlmICh1c2IyLT5iYXNlKQorCQl1c2IyY3RsID0gcmVhZGwodXNiMi0+YmFzZSk7CisJZWxz
ZQorCQl1c2IyY3RsID0gcmVhZGwodXNiMi0+ZG11ICsgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJP
TCk7CiAKIAlpZiAodXNiMmN0bCAmIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0xfVVNCX1BMTF9Q
RElWX01BU0spIHsKIAkJdXNiX3BsbF9wZGl2ID0gdXNiMmN0bDsKQEAgLTU4LDE1ICs2NiwyNCBA
QCBzdGF0aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKIAl1c2Jf
cGxsX25kaXYgPSAoMTkyMDAwMDAwMCAqIHVzYl9wbGxfcGRpdikgLyByZWZfY2xrX3JhdGU7CiAK
IAkvKiBVbmxvY2sgRE1VIFBMTCBzZXR0aW5ncyB3aXRoIHNvbWUgbWFnaWMgdmFsdWUgKi8KLQl3
cml0ZWwoMHgwMDAwZWE2OCwgZG11ICsgQkNNQV9ETVVfQ1JVX0NMS1NFVF9LRVkpOworCWlmICh1
c2IyLT5jbGtzZXQpCisJCXJlZ21hcF93cml0ZSh1c2IyLT5jbGtzZXQsIDAsIDB4MDAwMGVhNjgp
OworCWVsc2UKKwkJd3JpdGVsKDB4MDAwMGVhNjgsIHVzYjItPmRtdSArIEJDTUFfRE1VX0NSVV9D
TEtTRVRfS0VZKTsKIAogCS8qIFdyaXRlIFVTQiAyLjAgUExMIGNvbnRyb2wgc2V0dGluZyAqLwog
CXVzYjJjdGwgJj0gfkJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0xfVVNCX1BMTF9ORElWX01BU0s7
CiAJdXNiMmN0bCB8PSB1c2JfcGxsX25kaXYgPDwgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTF9V
U0JfUExMX05ESVZfU0hJRlQ7Ci0Jd3JpdGVsKHVzYjJjdGwsIGRtdSArIEJDTUFfRE1VX0NSVV9V
U0IyX0NPTlRST0wpOworCWlmICh1c2IyLT5iYXNlKQorCQl3cml0ZWwodXNiMmN0bCwgdXNiMi0+
YmFzZSk7CisJZWxzZQorCQl3cml0ZWwodXNiMmN0bCwgdXNiMi0+ZG11ICsgQkNNQV9ETVVfQ1JV
X1VTQjJfQ09OVFJPTCk7CiAKIAkvKiBMb2NrIERNVSBQTEwgc2V0dGluZ3MgKi8KLQl3cml0ZWwo
MHgwMDAwMDAwMCwgZG11ICsgQkNNQV9ETVVfQ1JVX0NMS1NFVF9LRVkpOworCWlmICh1c2IyLT5j
bGtzZXQpCisJCXJlZ21hcF93cml0ZSh1c2IyLT5jbGtzZXQsIDAsIDB4MDAwMDAwMDApOworCWVs
c2UKKwkJd3JpdGVsKDB4MDAwMDAwMDAsIHVzYjItPmRtdSArIEJDTUFfRE1VX0NSVV9DTEtTRVRf
S0VZKTsKIAogZXJyX2Nsa19vZmY6CiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHVzYjItPnJlZl9j
bGspOwpAQCAtOTAsMTAgKzEwNywyNyBAQCBzdGF0aWMgaW50IGJjbV9uc191c2IyX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXJldHVybiAtRU5PTUVNOwogCXVzYjItPmRl
diA9IGRldjsKIAotCXVzYjItPmRtdSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9i
eW5hbWUocGRldiwgImRtdSIpOwotCWlmIChJU19FUlIodXNiMi0+ZG11KSkgewotCQlkZXZfZXJy
KGRldiwgIkZhaWxlZCB0byBtYXAgRE1VIHJlZ3NcbiIpOwotCQlyZXR1cm4gUFRSX0VSUih1c2Iy
LT5kbXUpOworCWlmIChvZl9maW5kX3Byb3BlcnR5KGRldi0+b2Zfbm9kZSwgImJyY20sc3lzY29u
LWNsa3NldCIsIE5VTEwpKSB7CisJCXVzYjItPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UocGRldiwgMCk7CisJCWlmIChJU19FUlIodXNiMi0+YmFzZSkpIHsKKwkJCWRldl9l
cnIoZGV2LCAiRmFpbGVkIHRvIG1hcCBjb250cm9sIHJlZ1xuIik7CisJCQlyZXR1cm4gUFRSX0VS
Uih1c2IyLT5iYXNlKTsKKwkJfQorCisJCXVzYjItPmNsa3NldCA9IHN5c2Nvbl9yZWdtYXBfbG9v
a3VwX2J5X3BoYW5kbGUoZGV2LT5vZl9ub2RlLAorCQkJCQkJCSAgICAgICAiYnJjbSxzeXNjb24t
Y2xrc2V0Iik7CisJCWlmIChJU19FUlIodXNiMi0+Y2xrc2V0KSkgeworCQkJZGV2X2VycihkZXYs
ICJGYWlsZWQgdG8gbG9va3VwIGNsa3NldCByZWdtYXBcbiIpOworCQkJcmV0dXJuIFBUUl9FUlIo
dXNiMi0+Y2xrc2V0KTsKKwkJfQorCX0gZWxzZSB7CisJCXVzYjItPmRtdSA9IGRldm1fcGxhdGZv
cm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwgImRtdSIpOworCQlpZiAoSVNfRVJSKHVz
YjItPmRtdSkpIHsKKwkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIG1hcCBETVUgcmVnc1xuIik7
CisJCQlyZXR1cm4gUFRSX0VSUih1c2IyLT5kbXUpOworCQl9CisKKwkJZGV2X3dhcm4oZGV2LCAi
dXNpbmcgZGVwcmVjYXRlZCBEVCBiaW5kaW5nXG4iKTsKIAl9CiAKIAl1c2IyLT5yZWZfY2xrID0g
ZGV2bV9jbGtfZ2V0KGRldiwgInBoeS1yZWYtY2xrIik7Ci0tIAoyLjI2LjIKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
