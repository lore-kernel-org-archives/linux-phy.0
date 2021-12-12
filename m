Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A62C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 12 Dec 2021 14:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHiTKNtrLcguxIDqWrg1XJuiz+A6IJMMHLeCKRSxkzs=; b=hP3QuKeGjmKip45UzKqLB0bD4r
	9sc0/pbL4HSX3NCxj+MdmioBIe8UsxIKxKEK1xi1KEMSEkRROPEWOlEO2Ydq5YjYTCPiCJ47MbEgB
	NpKeLdF7wC+wwtxkFFEEhuysp/PWkxTqz4UbjQ/ezWwf0US39YvwW/d7iKsvKR1ZPpfOF3FSfbPlV
	6bSZTjWINZIdpM8nBI/mzNBIvcuTjnVMQLI0cXoC3VZ3VRdQjIY+7kI1aCI8MhsV0UDisFqcNiGMl
	Qe/CgXvYtnR9l1HuTv0tqXNS6H8/dTwXAW+yS3j2/RiXsvzJzMnRZ/hTf86SPjKELZ9vbbsiddR0n
	b3OQzoqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwPt7-006ewt-M5; Sun, 12 Dec 2021 14:31:41 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwPt5-006ewZ-3k
 for linux-phy@lists.infradead.org; Sun, 12 Dec 2021 14:31:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id m6so14667417lfu.1
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 06:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VBxOttOanXQi8+gUOe1aPRf28WeiRgO0+KmnpkQpZ9s=;
 b=goi0nVevc1lmZp2gJ4gpKszQiyxv8QQKnbF23lOAZQNVSUJg6E7Y1Yy/odw1kkO7GA
 6o6voSIx5T7S+vdJl1i+dNJVXFRXigMwons9NIewnx+uRkC0sZyAFygobaOLqaELcMMq
 wicFr+vr4OZ+N5r7bHkkbcH6TMhPdoc4MmRWjWCCc03QHNyFHQd3Doyf1O5EoA5bjQb9
 7VvcfzFCYaplcE6m7+WsF8NVIPSSgr5TYkNAddOjMuv2jTTWPk9eGXVubv80jnukflZl
 i2pH/RLuno1+oG9nrzn5Ar4pW3T6L4JVu9TnNfcPDjYBIA6vNqzbAVwFVhgQH/VFiQUt
 qmsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VBxOttOanXQi8+gUOe1aPRf28WeiRgO0+KmnpkQpZ9s=;
 b=okBAAoVDKqipMEg7II6mBf9yLQMjMi13LV2/1wBACZeT5Wm1roX3QHVUpyYlQTtTtF
 E8lJIASou/DVR8isfGxbL+hodB0Ls/fl0uV+kjEMaV6RvMJUKNZP+PsnUeVuedjv24/a
 SkKE9EsMcN19IFG++8kf3EkRZArkQnqkeEZlNy2HPBqWenSlSJfctGgmvkS5vT68qGIy
 fErukBKIUFkdYOyyla+v56HWldem78AQmSjbgOch7T89DucJ1a2Hj6VC5+vI593OD2u+
 e+BPFZzpbf91OaCmlqEhMyM+v0x8SoBb9/8OcZhJaAkBPFfnuqlrszWExCs4685Xlf7X
 ZObw==
X-Gm-Message-State: AOAM532WQrTrdm5mzJu8NLxi3sAcPGpCJktP5T0UTUVFqPSOxGgNwZhK
 wU9Due4BywviFilsvQbDPH8=
X-Google-Smtp-Source: ABdhPJx975a/nLjNoGRL+73F5WkY/HOAQXv1b/iHWAdCDWGX4R3ePRLX6RiBQax3wzLUJJYbxReR6w==
X-Received: by 2002:a05:6512:110c:: with SMTP id
 l12mr23746178lfg.224.1639319496636; 
 Sun, 12 Dec 2021 06:31:36 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id v10sm1054752ljp.125.2021.12.12.06.31.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Dec 2021 06:31:36 -0800 (PST)
Subject: Re: [PATCH] phy: tegra: xusb: Fix NULL vs IS_ERR_OR_NULL checking
To: Miaoqian Lin <linmq006@gmail.com>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211212065014.31660-1-linmq006@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <942f943c-9ec8-9887-aa6d-4d133821beca@gmail.com>
Date: Sun, 12 Dec 2021 17:31:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211212065014.31660-1-linmq006@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_063139_211456_F947DBCD 
X-CRM114-Status: GOOD (  12.69  )
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

MTIuMTIuMjAyMSAwOTo1MCwgTWlhb3FpYW4gTGluINC/0LjRiNC10YI6Cj4gVGhlIHRlZ3JhX3h1
c2JfZmluZF9wb3J0X25vZGUoKSBmdW5jdGlvbiBtYXkgcmV0dXJuIGVycm9yIHBvaW50ZXIgd2hl
bgo+IGthc3ByaW50ZigpIHJldHVybiBOVUxMLiBVc2luZyBJU19FUlJfT1JfTlVMTCB0byBjaGVj
ayB0aGUgcmV0dXJuIHZhbHVlCj4gb2YgdGVncmFfeHVzYl9maW5kX3BvcnRfbm9kZSgpIHRvIGNh
dGNoIHRoaXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWlhb3FpYW4gTGluIDxsaW5tcTAwNkBnbWFp
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyB8IDEyICsrKysrKy0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKSW5z
dGVhZCBvZiBjaGFuZ2luZyB0aGUgNiBsaW5lcyBhbmQgbWFraW5nIGNvZGUgbGVzcyByZWFkYWJs
ZSwgeW91IGNvdWxkCmNoYW5nZSBhIHNpbmdsZSBsaW5lLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwppbmRleCA5NjNkZTU5
MTNlNTAuLmFhNTIzN2VhY2QyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5j
CisrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwpAQCAtNDU1LDcgKzQ1NSw3IEBAIHRlZ3Jh
X3h1c2JfZmluZF9wb3J0X25vZGUoc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsCipwYWRjdGwsIGNv
bnN0IGNoYXIgKnR5cGUsCiAgICAgICAgbmFtZSA9IGthc3ByaW50ZihHRlBfS0VSTkVMLCAiJXMt
JXUiLCB0eXBlLCBpbmRleCk7CiAgICAgICAgaWYgKCFuYW1lKSB7CiAgICAgICAgICAgICAgICBv
Zl9ub2RlX3B1dChwb3J0cyk7Ci0gICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVN
KTsKKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwogICAgICAgIH0KICAgICAgICBucCA9IG9m
X2dldF9jaGlsZF9ieV9uYW1lKHBvcnRzLCBuYW1lKTsKICAgICAgICBrZnJlZShuYW1lKTsKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
