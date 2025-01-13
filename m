Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F70BE7719F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 13:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVDg1DUtI9zNNeUOBCueP9f3YUnJnBvxSIGoaLIRgZw=; b=2kbQVIP0hxgXGn
	Ei1dbYPP4EcQ3h+LkTVkBHBz9wpjExeRt2BEX1xunhnD9RdFmhED8f1TN4SyBSGa6DewuNOqZfEd/
	9cW/Oh+ca5OA05Wd0yLU73lKDZVFO6yTBMAZCU6rmbuCNFUSM6D3AHInWGGc2zclycRZIyP1T1z2/
	du7vRhMtoYlhZlJRnmEOa9055QIYr2avZJbYuy7Cbg+MhC9nUu5HpNAPcxI8yxIaJorRAg/zbF8zU
	ZxPj0imZzFEIf483eVEMgYl9dt4EpUyMlEOlQgOYfnjIbj7S9soMc2VktL03kKLSW9CF7FEHh/KZv
	p3+zBRwKLMIznk1WFiIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKcB-00000005GiP-3JyA;
	Mon, 13 Jan 2025 13:36:23 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKc9-00000005Ggh-0WfZ
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 13:36:22 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2ef72924e53so7162566a91.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 05:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736775380; x=1737380180; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EuTVHOhXyQ0XbCCPbhaJI12K/hrI9yLK+310Vw779hc=;
        b=C2v8K3v3o82kSdNcndthVssTvixPvOsD6iYXZvW+333nHd/NkzeoKHase97BUDGht5
         VtkLDUT/W2cNH3mTgSqZmlYGjtzOAlvrEkuPWcGHTDabDhgBs+p9Nr178H4roE8Oqvn0
         ZNwfG7zZE72DxmKXro38ByPpKkYZD6VH5uL7g6M1bYUsw7KGxI7lTGaDfaKZFrR/sVRv
         ruNtpiF9IoeOk79uFYO2/RGx2HULMP4J59Vtcwhy1Spi3iERbx15Uo7WccEO12QG5ZmY
         qAKptzGJNUXRnriaB8gI57fe3LKJIoXtHKov+EkG9V7454bO5MVPdTJJV0slsFUjIW5G
         wPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736775380; x=1737380180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EuTVHOhXyQ0XbCCPbhaJI12K/hrI9yLK+310Vw779hc=;
        b=oG3BENr6o2LV2qh4GXMQ8P52wdkUMYLidv23/oGsoAwT/G6MAKqGxFx5XVnmDAyRqt
         IqXMEhVm7zxzC/wtzki+Dy361JCX6E5fENs8rHH6QGrI4+88dV7Gpv3QcKm/UhPfyoGW
         YHSkGSoM668B3v/CLMAyyESPCNuvbj9GOaxP52nfweYkT09ce7zLDz8Xl7NK6iDuDML+
         QduhZH5uOQ/roMXF4/OTZAYvNqUmNvn4gjXC06PYcleBDTG3ps/kA6zpWAG2XLhf5Q/D
         6+9u0mszKKb2VtSmKTznv44MglMIYcyvq/jWEs7fVwRMSl+UUX2r8j36rUYhEeQM8pe+
         /dAw==
X-Forwarded-Encrypted: i=1; AJvYcCU3+5BvnvSQxsxk+FiCsGgkmIwo8oBaqmTBOS/ecWuzsntAkhv9StqYd0I5pMkTvtBbOztADNm/IRA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqbjwLWhr9/D8rNdmwU9kACQFVEcVYp+1arD33yBu2p2S+vNj5
	gVtsWfe+e4znY8QRzmioqJQ8p/YaSQ3jfHpRGNRkiG6VhvH+wAbkIT9BkzVFWcuk3cOrxRWsooX
	JOrXxn+H3WTTh3s3IaSySS1koIgE=
X-Gm-Gg: ASbGncub8RnyJWO2ROed8NcsgYUNueRVkh4Xwusr0YMK4LeVW0uVOjmvL97I3KSxGks
	iJKmvB/tgNFkPQQVAak49hO75QVdD8Ky0ZmMS0Q==
X-Google-Smtp-Source: AGHT+IGw4WIsHN8HCl7NZ6+1bT7XBVrMKmlcOr+lrFjDL19AXQ1sJAPW3nxwSk20TzOAQD9GAC58haEphyroxEbjKRk=
X-Received: by 2002:a17:90b:544b:b0:2ee:9902:18b4 with SMTP id
 98e67ed59e1d1-2f548f61fe6mr29283746a91.27.1736775379652; Mon, 13 Jan 2025
 05:36:19 -0800 (PST)
MIME-Version: 1.0
References: <tencent_0B8867EE08AA1E4818AFCD13C63913D7C507@qq.com>
In-Reply-To: <tencent_0B8867EE08AA1E4818AFCD13C63913D7C507@qq.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 13 Jan 2025 07:36:07 -0600
X-Gm-Features: AbW1kva0m353-Yfpr9FvGsdefIHToWsxJDjh4641A3g85jC7EIaD3-Q1onOi9_8
Message-ID: <CAHCN7xJ6v3oNd+8mrZtpLtVj9ghGxGidYDqaBDWCt9pWg0OiGQ@mail.gmail.com>
Subject: Re: [PATCH V4] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: xiaopeitux@foxmail.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, geert@linux-m68k.org, 
	Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_053621_162193_A92501BB 
X-CRM114-Status: GOOD (  22.11  )
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

T24gU3VuLCBKYW4gMTIsIDIwMjUgYXQgNzo1MOKAr1BNIDx4aWFvcGVpdHV4QGZveG1haWwuY29t
PiB3cm90ZToKPgo+IEZyb206IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPgo+IEZJ
RUxEX1BSRVAoKSBjaGVja3MgdGhhdCBhIHZhbHVlIGZpdHMgaW50byB0aGUgYXZhaWxhYmxlIGJp
dGZpZWxkLAo+IGJ1dCB0aGUgaW5kZXggZGl2IGVxdWFscyB0byA0LGlzIG91dCBvZiByYW5nZS4K
Pgo+IHdoaWNoIGdjYyBjb21wbGFpbnMgYWJvdXQ6Cj4gSW4gZnVuY3Rpb24g4oCYZnNsX3NhbXN1
bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldOKAmSwKPiBpbmxpbmVkIGZyb20g4oCY
ZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4gZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgo+IC4vLi9pbmNsdWRlL2xpbnV4L2Nv
bXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fz
c2VydF81MzjigJkKPiBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogRklFTERfUFJFUDog
dmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKPiAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNz
ZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sCj4gX19DT1VOVEVSX18p
Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IC4vLi9p
bmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTIzOjQ6IG5vdGU6IGluIGRlZmluaXRpb24g
b2YKPiBtYWNybyDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmSA1MjMgfCAgICBwcmVmaXggIyMg
c3VmZml4KCk7Cj4gICAgICAgfCAgICBefn5+fn4KPiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxl
cl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiDigJhfY29tcGls
ZXRpbWVfYXNzZXJ04oCZCj4gICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24s
IG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLAo+ICBfX0NPVU5URVJfXykKPgo+IFJFRzEyX0NL
X0RJVl9NQVNLIG9ubHkgdHdvIGJpdCwgbGltaXQgZGl2IHRvIHJhbmdlIDB+MywKPiBzbyBidWls
ZCBlcnJvciB3aWxsIGZpeC4KPgo+IEZpeGVzOiBkNTY3Njc5ZjJiNmEgKCJwaHk6IGZyZWVzY2Fs
ZTogZnNsLXNhbXN1bmctaGRtaTogQ2xlYW4gdXAgZmxkX3RnX2NvZGUgY2FsY3VsYXRpb24iKQo+
IFNpZ25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPgo+IENoYW5n
bG9nOgo+IC0tLQo+IFY0OiBjaGFuZ2UgdG8gdXNlIGlmIHN0YXRlbWVudAo+IFYzOiBjaGFuZ2Ug
dG8gdXNlIGRvLXdoaWxlCj4gVjI6IGNoYW5nZSB0byB1c2UgbG9naWNhbCBBTkQKPiAtLS0KPiAg
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAxMSArKysrKysr
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRt
aS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBpbmRl
eCA1ZWFjNzBhMWU4NTguLjFhMDc5MDc1ZGU2NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gQEAgLTMyNSw3ICszMjUsNyBAQCB0b19mc2xf
c2Ftc3VuZ19oZG1pX3BoeShzdHJ1Y3QgY2xrX2h3ICpodykKPiAgICAgICAgIHJldHVybiBjb250
YWluZXJfb2YoaHcsIHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSwgaHcpOwo+ICB9Cj4KPiAt
c3RhdGljIHZvaWQKPiArc3RhdGljIGludAo+ICBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1
cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHBoeV9j
b25maWcgKmNmZykKPiAgewo+IEBAIC0zNDEsNiArMzQxLDkgQEAgZnNsX3NhbXN1bmdfaGRtaV9w
aHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBo
eSwKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIH0KPgo+ICsgICAg
ICAgaWYgKHVubGlrZWx5KGRpdiA9PSA0KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7Cj4gKwo+ICAgICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRp
diksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPgo+ICAgICAgICAgLyoKPiBAQCAtMzY0LDYg
KzM2Nyw4IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3Ry
dWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gICAgICAgICAgICAgICAgRklFTERfUFJF
UChSRUcxNF9SUF9DT0RFX01BU0ssIDIpIHwKPiAgICAgICAgICAgICAgICBGSUVMRF9QUkVQKFJF
RzE0X1RHX0NPREVfSElHSF9NQVNLLCBmbGRfdGdfY29kZSA+PiA4KSwKPiAgICAgICAgICAgICAg
ICBwaHktPnJlZ3MgKyBQSFlfUkVHKDE0KSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gIH0K
Pgo+ICBzdGF0aWMgdW5zaWduZWQgbG9uZyBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9maW5kX3Btcyh1
bnNpZ25lZCBsb25nIGZvdXQsIHU4ICpwLCB1MTYgKm0sIHU4ICpzKQo+IEBAIC00NjcsNyArNDcy
LDkgQEAgc3RhdGljIGludCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmUoc3RydWN0IGZz
bF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gICAgICAgICB3cml0ZWIoUkVHMjFfU0VMX1RYX0NL
X0lOViB8IEZJRUxEX1BSRVAoUkVHMjFfUE1TX1NfTUFTSywKPiAgICAgICAgICAgICAgICBjZmct
PnBsbF9kaXZfcmVnc1syXSA+PiA0KSwgcGh5LT5yZWdzICsgUEhZX1JFRygyMSkpOwo+Cj4gLSAg
ICAgICBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHBoeSwgY2Zn
KTsKPiArICAgICAgIHJldCA9IGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9j
a19kZXQocGh5LCBjZmcpOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgZGV2
X2VycihwaHktPmRldiwgInBpeGNsb2NrIHRvbyBsYXJnZVxuIik7CgpJZiB0aGVyZSBpcyBhbiBl
cnJvciBjb25kaXRpb24sIHdlIHNob3VsZCByZXR1cm4gdGhhdCBlcnJvciBjb2RlIGhlcmUKYW5k
IGV4aXQgZWFybHksIG90aGVyd2lzZSB0aGVyZSBpc24ndCByZWFsbHkgYSBwb2ludCB0byBjaGVj
a2luZyBmb3IKdGhlIGVycm9yIGNvbmRpdGlvbi4KCgo+Cj4gICAgICAgICB3cml0ZWIoUkVHMzNf
RklYX0RBIHwgUkVHMzNfTU9ERV9TRVRfRE9ORSwgcGh5LT5yZWdzICsgUEhZX1JFRygzMykpOwo+
Cj4gLS0KPiAyLjI1LjEKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
