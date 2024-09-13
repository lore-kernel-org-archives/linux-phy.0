Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16158EEEC0E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 04:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFE5YSrZgU9x6k24VxVlfEGkJxKKGI0noAYbgbFPcRQ=; b=qnhVUZtsSde3P4
	+zBkcFT3SlvV2S5/ZTty1WCh63gcjEcb0k7Vd6bpx7AC5+M4EDTWnGGkgaifDmTXyfMKi5RgCKtch
	k2OcT5YKshazo7bgEX1IHy8I8S32ZiFE1+qRzS6BvVqK0guLwiePCIuRI1ffyyPFxiiQDL9l71UhK
	+Z2+WNnQ9UMgRgE/T2qnDh45eyCnC3gKtN6G0taIcvvuaCjYIu9QgBoFzGT5qdedvqt0S5C/QZv2c
	mzPace3IjJc/DZUUWvh1umgdtdUyUPSw0VsUHuh3wS3fKzkkXlcxos9zAXusOw0LvvKobZFnNropj
	kdfAFN7fLhRAa2PNGfvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soyCB-0000000EvXS-2T2q;
	Fri, 13 Sep 2024 04:46:11 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soyC8-0000000EvWy-16Zx
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 04:46:09 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5c241feb80dso5381846a12.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Sep 2024 21:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726202766; x=1726807566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etW/iub89JqiLphBAHzvsoo9XIPyzDTt8mamtwnIl7s=;
        b=mZOsvC4oqlpucvQvPg/zGjtkKw1vyTUBsdGp/wFfyBoo7XJx+PiikME2utBMCn6ssH
         2S1Hvt4L5WJF1tfmBCe3NwW4K2rDtISBVbkN7qDoRvhtP2ZHBOULmevZjAZqjqC/Ejru
         vMklVpfBIWUrv3fVkMwbdZQ+J5tGc5zTdNJ+9jtGfntwYpRuDkBalaoO7E5sbh8tW5CR
         FmS6vrnWicEC6fLXNfVpd78yTNy17NM44dfltcojI9Q8lAYXaoyIVTPhh9oFHdJP+mK+
         e2ZYpmPaAHvwIuBc0u1rHqY5OeqnAU5u7fIx05/NxOYncQcB7jOhjo5etoJZUNWkS7e/
         e7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726202766; x=1726807566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=etW/iub89JqiLphBAHzvsoo9XIPyzDTt8mamtwnIl7s=;
        b=pUOvbFI8TOnLYgibLGpi16OW0TltBBaX6gIQtu+U2aFeNi5BhA3jEhPZkrptu2spfY
         YexkUB8yy3X6w5Epabg1ob2yry9oClL6P6XRNk5da8EvbooYKBGkEWVsD8dMl7wiJcMw
         jox9XgYZgnSKHCIjiIX8Rb7blJBBrXljMrwckdvAPlIuCj40N4Zzg2cL4yyZFRGk6y0H
         vPMOYzDfxnZc3CXSF3rISKc7TXKLwJi47t6AmV8mYXP2BakYeBaQQlUEylnVWrUqtfP1
         JFduY3fIeMyhQQj5d5/QRAdadvIubEUw/qapXnabAKJP1O4eVEQ3ZAzv49o08ch8tcIB
         Zbzw==
X-Forwarded-Encrypted: i=1; AJvYcCVvTJHn0SjtsCyo1pbAfxGNcv4zvqSTbT4Oe/TtbWVYDTbhKZpNNqtOKIrKwQflu/+CO3/NAs86cos=@lists.infradead.org
X-Gm-Message-State: AOJu0YxH1mG+MCH2GTsWx+Dghy06R89jN2r9FgIvWWF/AxSzVyRrzTz8
	SHU6JV9HOwcUl2XmyjAxVbkXlURwHqqJT7mM7E8/8KtpfJaquzsRVIk/QQ==
X-Google-Smtp-Source: AGHT+IHxgF432i43pDnIe5jmxrG9h7pU58o/7t/3GD8MSHv7ETteVuY0BK3UNxdrJtKC2Ox0T0rmDw==
X-Received: by 2002:a05:6402:520e:b0:5c2:5248:a929 with SMTP id 4fb4d7f45d1cf-5c41435c3d2mr6267297a12.7.1726202766355;
        Thu, 12 Sep 2024 21:46:06 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3ebd76fc4sm7303468a12.78.2024.09.12.21.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 21:46:05 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] phy: bcm-ns-usb2: drop support for old binding variant
Date: Fri, 13 Sep 2024 06:45:57 +0200
Message-Id: <20240913044557.28315-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240913044557.28315-1-zajec5@gmail.com>
References: <20240913044557.28315-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_214608_330313_1FC1A4EC 
X-CRM114-Status: GOOD (  14.91  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIG9sZCBiaW5kaW5n
IHdhcyBpbmNvcnJlY3RseSBkZXNpZ25lZCBhbmQgZW5kZWQgdXAgYmVpbmcgZGVwcmVjYXRlZCAz
CnllYXJzIGFnby4gRmluYWxseSBpdCBoYXMgYmVlbiBkcm9wcGVkIHNvIHJlbGV2YW50IGNvZGUg
aXQgbm90IG5lZWRlZAphbnltb3JlLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxy
YWZhbEBtaWxlY2tpLnBsPgotLS0KIGRyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNi
Mi5jIHwgNTQgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyBiL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY20t
bnMtdXNiMi5jCmluZGV4IDUyMTNjNzViNmRhNi4uYzVkMzUwMzFiMzk4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYworKysgYi9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwpAQCAtMjQsOSArMjQsNiBAQCBzdHJ1Y3QgYmNtX25z
X3VzYjIgewogCXN0cnVjdCBwaHkgKnBoeTsKIAlzdHJ1Y3QgcmVnbWFwICpjbGtzZXQ7CiAJdm9p
ZCBfX2lvbWVtICpiYXNlOwotCi0JLyogRGVwcmVjYXRlZCBiaW5kaW5nICovCi0Jdm9pZCBfX2lv
bWVtICpkbXU7CiB9OwogCiBzdGF0aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBw
aHkgKnBoeSkKQEAgLTQ5LDEwICs0Niw3IEBAIHN0YXRpYyBpbnQgYmNtX25zX3VzYjJfcGh5X2lu
aXQoc3RydWN0IHBoeSAqcGh5KQogCQlnb3RvIGVycl9jbGtfb2ZmOwogCX0KIAotCWlmICh1c2Iy
LT5iYXNlKQotCQl1c2IyY3RsID0gcmVhZGwodXNiMi0+YmFzZSk7Ci0JZWxzZQotCQl1c2IyY3Rs
ID0gcmVhZGwodXNiMi0+ZG11ICsgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTCk7CisJdXNiMmN0
bCA9IHJlYWRsKHVzYjItPmJhc2UpOwogCiAJaWYgKHVzYjJjdGwgJiBCQ01BX0RNVV9DUlVfVVNC
Ml9DT05UUk9MX1VTQl9QTExfUERJVl9NQVNLKSB7CiAJCXVzYl9wbGxfcGRpdiA9IHVzYjJjdGw7
CkBAIC02NiwyNCArNjAsMTYgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9waHlfaW5pdChzdHJ1
Y3QgcGh5ICpwaHkpCiAJdXNiX3BsbF9uZGl2ID0gKDE5MjAwMDAwMDAgKiB1c2JfcGxsX3BkaXYp
IC8gcmVmX2Nsa19yYXRlOwogCiAJLyogVW5sb2NrIERNVSBQTEwgc2V0dGluZ3Mgd2l0aCBzb21l
IG1hZ2ljIHZhbHVlICovCi0JaWYgKHVzYjItPmNsa3NldCkKLQkJcmVnbWFwX3dyaXRlKHVzYjIt
PmNsa3NldCwgMCwgMHgwMDAwZWE2OCk7Ci0JZWxzZQotCQl3cml0ZWwoMHgwMDAwZWE2OCwgdXNi
Mi0+ZG11ICsgQkNNQV9ETVVfQ1JVX0NMS1NFVF9LRVkpOworCXJlZ21hcF93cml0ZSh1c2IyLT5j
bGtzZXQsIDAsIDB4MDAwMGVhNjgpOwogCiAJLyogV3JpdGUgVVNCIDIuMCBQTEwgY29udHJvbCBz
ZXR0aW5nICovCiAJdXNiMmN0bCAmPSB+QkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTF9VU0JfUExM
X05ESVZfTUFTSzsKIAl1c2IyY3RsIHw9IHVzYl9wbGxfbmRpdiA8PCBCQ01BX0RNVV9DUlVfVVNC
Ml9DT05UUk9MX1VTQl9QTExfTkRJVl9TSElGVDsKLQlpZiAodXNiMi0+YmFzZSkKLQkJd3JpdGVs
KHVzYjJjdGwsIHVzYjItPmJhc2UpOwotCWVsc2UKLQkJd3JpdGVsKHVzYjJjdGwsIHVzYjItPmRt
dSArIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0wpOworCisJd3JpdGVsKHVzYjJjdGwsIHVzYjIt
PmJhc2UpOwogCiAJLyogTG9jayBETVUgUExMIHNldHRpbmdzICovCi0JaWYgKHVzYjItPmNsa3Nl
dCkKLQkJcmVnbWFwX3dyaXRlKHVzYjItPmNsa3NldCwgMCwgMHgwMDAwMDAwMCk7Ci0JZWxzZQot
CQl3cml0ZWwoMHgwMDAwMDAwMCwgdXNiMi0+ZG11ICsgQkNNQV9ETVVfQ1JVX0NMS1NFVF9LRVkp
OworCXJlZ21hcF93cml0ZSh1c2IyLT5jbGtzZXQsIDAsIDB4MDAwMDAwMDApOwogCiBlcnJfY2xr
X29mZjoKIAljbGtfZGlzYWJsZV91bnByZXBhcmUodXNiMi0+cmVmX2Nsayk7CkBAIC0xMDcsMjcg
KzkzLDE3IEBAIHN0YXRpYyBpbnQgYmNtX25zX3VzYjJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIAkJcmV0dXJuIC1FTk9NRU07CiAJdXNiMi0+ZGV2ID0gZGV2OwogCi0JaWYg
KG9mX3Byb3BlcnR5X3ByZXNlbnQoZGV2LT5vZl9ub2RlLCAiYnJjbSxzeXNjb24tY2xrc2V0Iikp
IHsKLQkJdXNiMi0+YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAw
KTsKLQkJaWYgKElTX0VSUih1c2IyLT5iYXNlKSkgewotCQkJZGV2X2VycihkZXYsICJGYWlsZWQg
dG8gbWFwIGNvbnRyb2wgcmVnXG4iKTsKLQkJCXJldHVybiBQVFJfRVJSKHVzYjItPmJhc2UpOwot
CQl9Ci0KLQkJdXNiMi0+Y2xrc2V0ID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShk
ZXYtPm9mX25vZGUsCi0JCQkJCQkJICAgICAgICJicmNtLHN5c2Nvbi1jbGtzZXQiKTsKLQkJaWYg
KElTX0VSUih1c2IyLT5jbGtzZXQpKSB7Ci0JCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBsb29r
dXAgY2xrc2V0IHJlZ21hcFxuIik7Ci0JCQlyZXR1cm4gUFRSX0VSUih1c2IyLT5jbGtzZXQpOwot
CQl9Ci0JfSBlbHNlIHsKLQkJdXNiMi0+ZG11ID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291
cmNlX2J5bmFtZShwZGV2LCAiZG11Iik7Ci0JCWlmIChJU19FUlIodXNiMi0+ZG11KSkgewotCQkJ
ZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIERNVSByZWdzXG4iKTsKLQkJCXJldHVybiBQVFJf
RVJSKHVzYjItPmRtdSk7Ci0JCX0KKwl1c2IyLT5iYXNlID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFw
X3Jlc291cmNlKHBkZXYsIDApOworCWlmIChJU19FUlIodXNiMi0+YmFzZSkpIHsKKwkJZGV2X2Vy
cihkZXYsICJGYWlsZWQgdG8gbWFwIGNvbnRyb2wgcmVnXG4iKTsKKwkJcmV0dXJuIFBUUl9FUlIo
dXNiMi0+YmFzZSk7CisJfQogCi0JCWRldl93YXJuKGRldiwgInVzaW5nIGRlcHJlY2F0ZWQgRFQg
YmluZGluZ1xuIik7CisJdXNiMi0+Y2xrc2V0ID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhh
bmRsZShkZXYtPm9mX25vZGUsCisJCQkJCQkgICAgICAgImJyY20sc3lzY29uLWNsa3NldCIpOwor
CWlmIChJU19FUlIodXNiMi0+Y2xrc2V0KSkgeworCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBs
b29rdXAgY2xrc2V0IHJlZ21hcFxuIik7CisJCXJldHVybiBQVFJfRVJSKHVzYjItPmNsa3NldCk7
CiAJfQogCiAJdXNiMi0+cmVmX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJwaHktcmVmLWNsayIp
OwotLSAKMi4zNS4zCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
