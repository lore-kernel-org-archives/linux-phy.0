Return-Path: <SRS0=Pm1K=PO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DA2DC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 09:37:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9DF360551
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 09:37:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E9DF360551
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgs4dkzLIoZWYUg9gujS2eVEDpLjwAxU1018ApAEYfE=; b=Z1xhS5JmRkz3Ro
	uFq63abWiqdnq5oWphajj0drOn7fNkvcRzEg901d3VT+3vVqKH8BsYKQ1eRT433k9gA/JB8H18MPT
	BiMQ9OkLfE0bJxrqlpVlyX0g6CO4NXRuiSwJYomxawsSJ3nD9gwxpWToJCe2qKBf8a98yHZW473hx
	0BaEs6t0u8PeVUFCtPekgY43zFogfn2ZWcyNfeMoKnFlb13xH6oR7ZuVF1JItUOOhetdSqpv8IDRd
	goXcetLd/MYlwdt0oGbA2KznHX3Xnqws6S3iFjduKIT8HKwUttMnAePKCfZsPMaobGJjK3q7HfRnC
	JRb8bno3zc4+7uT7gzpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfIte-001Jj3-37; Tue, 26 Oct 2021 09:37:30 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfIta-001Jg3-Ij
 for linux-phy@lists.infradead.org; Tue, 26 Oct 2021 09:37:28 +0000
Received: by mail-lf1-x12e.google.com with SMTP id j2so2976462lfg.3
 for <linux-phy@lists.infradead.org>; Tue, 26 Oct 2021 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vKFWLSRl10tgQ1BAA/camWrcHhGVWkCvOyqQZ1aZWm4=;
 b=ZXK1k4pBYcr5jb/Oai+oGIp59SN838ETCgJhW3Y5443AzH2W7qh+r6OEzbV1mpp0Fl
 c17lqXzoULzIrV6mvN+acqvEmicr+fsnSErFYlK6f402aE0ptRyjibv5CXx7COz6YZHA
 0XL5vnsIkF2RehilDw4qzvObqhafZZdgC5SaiNjfeIHA0OpCsUWxJ7l/lqesuZCGLWei
 tS6vHm/FfL1u+v+aLrFNyCgtdiIFFUOErn5utAhXLSiV9P+n42ppsFqvdzSKf8vpH7Ye
 r6v4QBMPp0ilh87yLy7MCNLXz3LmhPQ/01bOpcHNMN3Wkfdt/wBEAUAnwsY+WVz4aQaH
 qTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vKFWLSRl10tgQ1BAA/camWrcHhGVWkCvOyqQZ1aZWm4=;
 b=u/ITM1YILG8FnnnXqbLgu15nwAPCu4RkgAq7CqvT+930ON1sHlOv3+OTpkexcxY9po
 bIn07TAMj6OAM6r5TCpReMYCgHX9w7XEyweNHzG2qe52fimxBqaNm3EEUqGzUKUTgBWX
 awJUWeUWGBazmeX05Ivj7jrgp6XWkti3HuoIrs6yD28AxrABwKij7+R3BxqijHYJHr5V
 8HZc73p1/2v2396GfMM4f90KjO4rzAxA8B/2x1GTPNntPQO4xhTnbktSker3M963szDj
 sO7baOyQmQwBRagPo4Zv4y9Tvf6Q/JyT80pINuQP9xJ94WJMPTCBDiHLGzP/qzk3zQ4a
 vVtw==
X-Gm-Message-State: AOAM530j8l2LG++SgKnBV+1aaoXjLljSPGbwGb3iTtq3wL2Vi6nxF/Np
 DXV7E37bZ4n8G3pA2UStUSb+jiSZfxk=
X-Google-Smtp-Source: ABdhPJxhtvBSZIiI+yxopG7DgTgfVaLQi15+YGbGH/tCbj/A+fNOqUTIW8/Y54zRFNqjF0L7oiz4gA==
X-Received: by 2002:a05:6512:4016:: with SMTP id
 br22mr14257700lfb.132.1635241043910; 
 Tue, 26 Oct 2021 02:37:23 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id o9sm600438lfk.292.2021.10.26.02.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Oct 2021 02:37:23 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND] phy: bcm-ns-usb2: support updated DT binding with PHY
 reg space
Date: Tue, 26 Oct 2021 11:37:16 +0200
Message-Id: <20211026093716.5567-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_023726_669197_1F54FFEE 
X-CRM114-Status: GOOD (  18.32  )
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
YWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQpUaGlzIHBhdGNoIGhhcyBiZWVu
IHByZXZpb3VzbHkgc2VudCBpbiBhIHBhdGNoc2V0IHRvdWNoaW5nIHR3bwpzdWJzeXN0ZW1zOiBQ
SFkgYW5kIE1GRC4gRm9yIHRoYXQgcmVhc29uIHByb2JhYmx5IGl0IGhhcyBiZWVuIG1pc3NlZC4K
ClRoaXMgYWRkcyBzdXBwb3J0IGZvciBiaW5kaW5nIGFkZGVkIGluIHRoZSBjb21taXQgNTViOWI3
NDE3MTJkCigiZHQtYmluZGluZ3M6IHBoeTogYnJjbSxucy11c2IyLXBoeTogYmluZCBqdXN0IGEg
UEhZIGJsb2NrIikgKGNhbiBiZQpmb3VuZCBpbiBsaW51eC1waHkuZ2l0KS4KLS0tCiBkcml2ZXJz
L3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyB8IDUyICsrKysrKysrKysrKysrKysrKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyBiL2Ry
aXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNiMi5jCmluZGV4IDRiMDE1YjhhNzFjMy4u
OThkMzI3MjlhNDVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5z
LXVzYjIuYworKysgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwpAQCAt
OSwxNyArOSwyMyBAQAogI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L2Rl
bGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CisjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nv
bi5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJl
c3MuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgogI2luY2x1ZGUgPGxpbnV4L3Bo
eS9waHkuaD4KICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KKyNpbmNsdWRlIDxs
aW51eC9yZWdtYXAuaD4KICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAKIHN0cnVjdCBiY21fbnNf
dXNiMiB7CiAJc3RydWN0IGRldmljZSAqZGV2OwogCXN0cnVjdCBjbGsgKnJlZl9jbGs7CiAJc3Ry
dWN0IHBoeSAqcGh5OworCXN0cnVjdCByZWdtYXAgKmNsa3NldDsKKwl2b2lkIF9faW9tZW0gKmJh
c2U7CisKKwkvKiBEZXByZWNhdGVkIGJpbmRpbmcgKi8KIAl2b2lkIF9faW9tZW0gKmRtdTsKIH07
CiAKQEAgLTI3LDcgKzMzLDYgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9waHlfaW5pdChzdHJ1
Y3QgcGh5ICpwaHkpCiB7CiAJc3RydWN0IGJjbV9uc191c2IyICp1c2IyID0gcGh5X2dldF9kcnZk
YXRhKHBoeSk7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdXNiMi0+ZGV2OwotCXZvaWQgX19pb21l
bSAqZG11ID0gdXNiMi0+ZG11OwogCXUzMiByZWZfY2xrX3JhdGUsIHVzYjJjdGwsIHVzYl9wbGxf
bmRpdiwgdXNiX3BsbF9wZGl2OwogCWludCBlcnIgPSAwOwogCkBAIC00NCw3ICs0OSwxMCBAQCBz
dGF0aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKIAkJZ290byBl
cnJfY2xrX29mZjsKIAl9CiAKLQl1c2IyY3RsID0gcmVhZGwoZG11ICsgQkNNQV9ETVVfQ1JVX1VT
QjJfQ09OVFJPTCk7CisJaWYgKHVzYjItPmJhc2UpCisJCXVzYjJjdGwgPSByZWFkbCh1c2IyLT5i
YXNlKTsKKwllbHNlCisJCXVzYjJjdGwgPSByZWFkbCh1c2IyLT5kbXUgKyBCQ01BX0RNVV9DUlVf
VVNCMl9DT05UUk9MKTsKIAogCWlmICh1c2IyY3RsICYgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJP
TF9VU0JfUExMX1BESVZfTUFTSykgewogCQl1c2JfcGxsX3BkaXYgPSB1c2IyY3RsOwpAQCAtNTgs
MTUgKzY2LDI0IEBAIHN0YXRpYyBpbnQgYmNtX25zX3VzYjJfcGh5X2luaXQoc3RydWN0IHBoeSAq
cGh5KQogCXVzYl9wbGxfbmRpdiA9ICgxOTIwMDAwMDAwICogdXNiX3BsbF9wZGl2KSAvIHJlZl9j
bGtfcmF0ZTsKIAogCS8qIFVubG9jayBETVUgUExMIHNldHRpbmdzIHdpdGggc29tZSBtYWdpYyB2
YWx1ZSAqLwotCXdyaXRlbCgweDAwMDBlYTY4LCBkbXUgKyBCQ01BX0RNVV9DUlVfQ0xLU0VUX0tF
WSk7CisJaWYgKHVzYjItPmNsa3NldCkKKwkJcmVnbWFwX3dyaXRlKHVzYjItPmNsa3NldCwgMCwg
MHgwMDAwZWE2OCk7CisJZWxzZQorCQl3cml0ZWwoMHgwMDAwZWE2OCwgdXNiMi0+ZG11ICsgQkNN
QV9ETVVfQ1JVX0NMS1NFVF9LRVkpOwogCiAJLyogV3JpdGUgVVNCIDIuMCBQTEwgY29udHJvbCBz
ZXR0aW5nICovCiAJdXNiMmN0bCAmPSB+QkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTF9VU0JfUExM
X05ESVZfTUFTSzsKIAl1c2IyY3RsIHw9IHVzYl9wbGxfbmRpdiA8PCBCQ01BX0RNVV9DUlVfVVNC
Ml9DT05UUk9MX1VTQl9QTExfTkRJVl9TSElGVDsKLQl3cml0ZWwodXNiMmN0bCwgZG11ICsgQkNN
QV9ETVVfQ1JVX1VTQjJfQ09OVFJPTCk7CisJaWYgKHVzYjItPmJhc2UpCisJCXdyaXRlbCh1c2Iy
Y3RsLCB1c2IyLT5iYXNlKTsKKwllbHNlCisJCXdyaXRlbCh1c2IyY3RsLCB1c2IyLT5kbXUgKyBC
Q01BX0RNVV9DUlVfVVNCMl9DT05UUk9MKTsKIAogCS8qIExvY2sgRE1VIFBMTCBzZXR0aW5ncyAq
LwotCXdyaXRlbCgweDAwMDAwMDAwLCBkbXUgKyBCQ01BX0RNVV9DUlVfQ0xLU0VUX0tFWSk7CisJ
aWYgKHVzYjItPmNsa3NldCkKKwkJcmVnbWFwX3dyaXRlKHVzYjItPmNsa3NldCwgMCwgMHgwMDAw
MDAwMCk7CisJZWxzZQorCQl3cml0ZWwoMHgwMDAwMDAwMCwgdXNiMi0+ZG11ICsgQkNNQV9ETVVf
Q1JVX0NMS1NFVF9LRVkpOwogCiBlcnJfY2xrX29mZjoKIAljbGtfZGlzYWJsZV91bnByZXBhcmUo
dXNiMi0+cmVmX2Nsayk7CkBAIC05MCwxMCArMTA3LDI3IEBAIHN0YXRpYyBpbnQgYmNtX25zX3Vz
YjJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIC1FTk9NRU07
CiAJdXNiMi0+ZGV2ID0gZGV2OwogCi0JdXNiMi0+ZG11ID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFw
X3Jlc291cmNlX2J5bmFtZShwZGV2LCAiZG11Iik7Ci0JaWYgKElTX0VSUih1c2IyLT5kbXUpKSB7
Ci0JCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIG1hcCBETVUgcmVnc1xuIik7Ci0JCXJldHVybiBQ
VFJfRVJSKHVzYjItPmRtdSk7CisJaWYgKG9mX2ZpbmRfcHJvcGVydHkoZGV2LT5vZl9ub2RlLCAi
YnJjbSxzeXNjb24tY2xrc2V0IiwgTlVMTCkpIHsKKwkJdXNiMi0+YmFzZSA9IGRldm1fcGxhdGZv
cm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKKwkJaWYgKElTX0VSUih1c2IyLT5iYXNlKSkg
eworCQkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIGNvbnRyb2wgcmVnXG4iKTsKKwkJCXJl
dHVybiBQVFJfRVJSKHVzYjItPmJhc2UpOworCQl9CisKKwkJdXNiMi0+Y2xrc2V0ID0gc3lzY29u
X3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShkZXYtPm9mX25vZGUsCisJCQkJCQkJICAgICAgICJi
cmNtLHN5c2Nvbi1jbGtzZXQiKTsKKwkJaWYgKElTX0VSUih1c2IyLT5jbGtzZXQpKSB7CisJCQlk
ZXZfZXJyKGRldiwgIkZhaWxlZCB0byBsb29rdXAgY2xrc2V0IHJlZ21hcFxuIik7CisJCQlyZXR1
cm4gUFRSX0VSUih1c2IyLT5jbGtzZXQpOworCQl9CisJfSBlbHNlIHsKKwkJdXNiMi0+ZG11ID0g
ZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LCAiZG11Iik7CisJCWlm
IChJU19FUlIodXNiMi0+ZG11KSkgeworCQkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIERN
VSByZWdzXG4iKTsKKwkJCXJldHVybiBQVFJfRVJSKHVzYjItPmRtdSk7CisJCX0KKworCQlkZXZf
d2FybihkZXYsICJ1c2luZyBkZXByZWNhdGVkIERUIGJpbmRpbmdcbiIpOwogCX0KIAogCXVzYjIt
PnJlZl9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicGh5LXJlZi1jbGsiKTsKLS0gCjIuMzEuMQoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
