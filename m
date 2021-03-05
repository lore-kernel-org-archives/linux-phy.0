Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99DFC433E0
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 652E5651F7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 06:09:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 652E5651F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dd174RZItr79ki1TYfO0IQbUsOj1gp/dMBkMB9UssFY=; b=NKhFDidnCGXCXmnxS66a/knd8
	hxwTEZcFJzY/44RsklUIsu1nL+HD8GgNnpK7ZW7zlQ157V3nTQ92d+203hSVkS1RyI+McfsNnSL/O
	hHWFIaP6/UwT8No06e+XpeXaMrlrimkOt2XSwp2j5XML60jAWBqPd4a4Pet/s8L46Xyx5VaWU0TeH
	5SdXXYCSi7xqLqn10Rze5r6Q2Ig3XSIOXM5grdenJWbhcwnesYv15V2QAiee3DTxU8RcD+Bo2jpiy
	24GtUgIAwbZnJ7M67OE1Pfjbh2ra05XjkCnKQJ5KriLkB0up3hy1F3QoefvyIyzV4v28XmhGPzwgB
	8YgkN16qg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJ953-00FQTV-Ma; Mon, 08 Mar 2021 06:09:25 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIECU-00FmGI-UT
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 17:25:21 +0000
Received: by mail-lf1-x12a.google.com with SMTP id e7so4944043lft.2
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 09:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Np441ZlRT1a2usnQ/Y8yGKL2QkXFf+g/pzr8QgoQl7o=;
 b=ipbT/rebN5CulcvrH7TCpmujCz0raIjRCI44NaxVNPvfM63ktiDg36+zxXW1cJOu9b
 rmwihGhh7lHJDInqOSi2XnesohJn89fphP2Pq/KJpHO2B2Qv61cgLig0Z1Cip1RDoHYY
 DHuK+H1oPaZBREmO1VUADD0PG9bTXLtg44whHW0IpPoCdZb3kWd/1Q3i2MxMCtl+27pG
 QXNbgfpODs5/40/w8s1DojCzD2rWE3rPsFExI5ggp/5slk0TxJpMJQ9ayft0FP7RJNaT
 qBhLcLzyG4/NXKtYn27BFt3kFqJbQ0xPUL9GjsFf4Hq8XBiVcT05KC9rz7YH7XXbSvX5
 m+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Np441ZlRT1a2usnQ/Y8yGKL2QkXFf+g/pzr8QgoQl7o=;
 b=mUZPOB/pSoX7VeG377Kn9bceum/GESBa/cVMmPjNqLmY45vRS+Nr0TG9TyOEYSKBgm
 tHtCn6N7Ao1PiMUFyrIBsSiMNlEWXDkcFC0tGWPi7X4k83dVq2WRYnglEasRsv20dyHS
 f/CsKZpBf1mRGEXwW2PIPmSHk0gThErhS0E/N54m4FsHyTFsq3KAa8mtooGDsQCqJwaI
 2hrd+tgkoONfaJhe0NtMZnUBLPu8YntZAbLu/XnMLqizzuPbjP/tphbJriy1wjnxbhuh
 9RrlmKyKYczkQSmMMen7KgRmgP+4yK5jcoZoJVHZOit+quVITZA0WrqmEgtTvy8B4ioB
 uULw==
X-Gm-Message-State: AOAM532b6OLob0hXrIjcFKiKvHdrmZWbogw8m1wqrK74E8Piy8GHfYnr
 kcqzoiZwtgNeHbibgwFlHxyNHdQri68=
X-Google-Smtp-Source: ABdhPJw9wZfgOjH8rW3K7ST07rnNPKOqyDfW/FZUxnolNbOhMGaWGEiSaXqmRF4N+kURQCJUHe1cbg==
X-Received: by 2002:ac2:51ba:: with SMTP id f26mr6294944lfk.207.1614965117645; 
 Fri, 05 Mar 2021 09:25:17 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id p25sm375195ljn.61.2021.03.05.09.25.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 09:25:17 -0800 (PST)
Subject: Re: [PATCH 3/3] phy: bcm-ns-usb2: support updated single CRU reg DT
 binding
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vivek Unune
 <npcomplete13@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org
References: <20210226114501.31086-1-zajec5@gmail.com>
 <20210226114501.31086-3-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <cce77b5e-8546-82ae-a6f5-209bdf3363a5@gmail.com>
Date: Fri, 5 Mar 2021 18:25:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-3-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_172519_407709_FDE68E50 
X-CRM114-Status: GOOD (  25.68  )
X-Mailman-Approved-At: Mon, 08 Mar 2021 06:09:19 +0000
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Q2MgbGludXgtcGh5QAoKT24gMjYuMDIuMjAyMSAxMjo0NSwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBVcGRhdGVk
IERUIGJpbmRpbmcgbWFwcyBhIHNpbmdsZSBDUlUgcmVnaXN0ZXIgdGhhdCBpcyBkaXJlY3RseSB1
c2VkIGZvcgo+IHRoZSBQSFkgY29udHJvbC4gQWNjZXNzaW5nIGNvbW1vbiBDUlUgcmVnIGlzIGhh
bmRsZWQgdXNpbmcgc3lzY29uICYKPiByZWdtYXAuCj4gCj4gVGhlIG9sZCBiaW5kaW5nIGhhcyBi
ZWVuIGRlcHJlY2F0ZWQgYW5kIHN0YXlzIGFzIGEgZmFsbGJhY2sgbWV0aG9kLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAtLS0KPiBJdCdz
IGEgcmV3b3JrZWQgdmVyc2lvbiBvZiBteSBhYm9uZGVkIDIwMTkgcGF0Y2g6Cj4gW1BBVENIIFYy
IDIvMl0gcGh5OiBiY20tbnMtdXNiMjogc3VwcG9ydCB1cGRhdGVkIERUIGJpbmRpbmcgd2l0aCB0
aGUgQ1JVIHN5c2Nvbgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8x
MDI5ODYzLwo+IC0tLQo+ICAgZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbS1ucy11c2IyLmMg
fCA1MiArKysrKysrKysrKysrKysrKysrKystLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQzIGlu
c2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNiMi5jIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJj
bS1ucy11c2IyLmMKPiBpbmRleCA0YjAxNWI4YTcxYzMuLjk4ZDMyNzI5YTQ1ZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNiMi5jCj4gQEAgLTksMTcgKzksMjMgQEAKPiAg
ICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAg
I2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+
ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJl
c3MuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgo+ICAgI2luY2x1ZGUgPGxp
bnV4L3BoeS9waHkuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAr
I2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAg
IAo+ICAgc3RydWN0IGJjbV9uc191c2IyIHsKPiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gICAJ
c3RydWN0IGNsayAqcmVmX2NsazsKPiAgIAlzdHJ1Y3QgcGh5ICpwaHk7Cj4gKwlzdHJ1Y3QgcmVn
bWFwICpjbGtzZXQ7Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4gKwo+ICsJLyogRGVwcmVjYXRl
ZCBiaW5kaW5nICovCj4gICAJdm9pZCBfX2lvbWVtICpkbXU7Cj4gICB9Owo+ICAgCj4gQEAgLTI3
LDcgKzMzLDYgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9waHlfaW5pdChzdHJ1Y3QgcGh5ICpw
aHkpCj4gICB7Cj4gICAJc3RydWN0IGJjbV9uc191c2IyICp1c2IyID0gcGh5X2dldF9kcnZkYXRh
KHBoeSk7Cj4gICAJc3RydWN0IGRldmljZSAqZGV2ID0gdXNiMi0+ZGV2Owo+IC0Jdm9pZCBfX2lv
bWVtICpkbXUgPSB1c2IyLT5kbXU7Cj4gICAJdTMyIHJlZl9jbGtfcmF0ZSwgdXNiMmN0bCwgdXNi
X3BsbF9uZGl2LCB1c2JfcGxsX3BkaXY7Cj4gICAJaW50IGVyciA9IDA7Cj4gICAKPiBAQCAtNDQs
NyArNDksMTAgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9waHlfaW5pdChzdHJ1Y3QgcGh5ICpw
aHkpCj4gICAJCWdvdG8gZXJyX2Nsa19vZmY7Cj4gICAJfQo+ICAgCj4gLQl1c2IyY3RsID0gcmVh
ZGwoZG11ICsgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTCk7Cj4gKwlpZiAodXNiMi0+YmFzZSkK
PiArCQl1c2IyY3RsID0gcmVhZGwodXNiMi0+YmFzZSk7Cj4gKwllbHNlCj4gKwkJdXNiMmN0bCA9
IHJlYWRsKHVzYjItPmRtdSArIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0wpOwo+ICAgCj4gICAJ
aWYgKHVzYjJjdGwgJiBCQ01BX0RNVV9DUlVfVVNCMl9DT05UUk9MX1VTQl9QTExfUERJVl9NQVNL
KSB7Cj4gICAJCXVzYl9wbGxfcGRpdiA9IHVzYjJjdGw7Cj4gQEAgLTU4LDE1ICs2NiwyNCBAQCBz
dGF0aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgIAl1c2Jf
cGxsX25kaXYgPSAoMTkyMDAwMDAwMCAqIHVzYl9wbGxfcGRpdikgLyByZWZfY2xrX3JhdGU7Cj4g
ICAKPiAgIAkvKiBVbmxvY2sgRE1VIFBMTCBzZXR0aW5ncyB3aXRoIHNvbWUgbWFnaWMgdmFsdWUg
Ki8KPiAtCXdyaXRlbCgweDAwMDBlYTY4LCBkbXUgKyBCQ01BX0RNVV9DUlVfQ0xLU0VUX0tFWSk7
Cj4gKwlpZiAodXNiMi0+Y2xrc2V0KQo+ICsJCXJlZ21hcF93cml0ZSh1c2IyLT5jbGtzZXQsIDAs
IDB4MDAwMGVhNjgpOwo+ICsJZWxzZQo+ICsJCXdyaXRlbCgweDAwMDBlYTY4LCB1c2IyLT5kbXUg
KyBCQ01BX0RNVV9DUlVfQ0xLU0VUX0tFWSk7Cj4gICAKPiAgIAkvKiBXcml0ZSBVU0IgMi4wIFBM
TCBjb250cm9sIHNldHRpbmcgKi8KPiAgIAl1c2IyY3RsICY9IH5CQ01BX0RNVV9DUlVfVVNCMl9D
T05UUk9MX1VTQl9QTExfTkRJVl9NQVNLOwo+ICAgCXVzYjJjdGwgfD0gdXNiX3BsbF9uZGl2IDw8
IEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0xfVVNCX1BMTF9ORElWX1NISUZUOwo+IC0Jd3JpdGVs
KHVzYjJjdGwsIGRtdSArIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0wpOwo+ICsJaWYgKHVzYjIt
PmJhc2UpCj4gKwkJd3JpdGVsKHVzYjJjdGwsIHVzYjItPmJhc2UpOwo+ICsJZWxzZQo+ICsJCXdy
aXRlbCh1c2IyY3RsLCB1c2IyLT5kbXUgKyBCQ01BX0RNVV9DUlVfVVNCMl9DT05UUk9MKTsKPiAg
IAo+ICAgCS8qIExvY2sgRE1VIFBMTCBzZXR0aW5ncyAqLwo+IC0Jd3JpdGVsKDB4MDAwMDAwMDAs
IGRtdSArIEJDTUFfRE1VX0NSVV9DTEtTRVRfS0VZKTsKPiArCWlmICh1c2IyLT5jbGtzZXQpCj4g
KwkJcmVnbWFwX3dyaXRlKHVzYjItPmNsa3NldCwgMCwgMHgwMDAwMDAwMCk7Cj4gKwllbHNlCj4g
KwkJd3JpdGVsKDB4MDAwMDAwMDAsIHVzYjItPmRtdSArIEJDTUFfRE1VX0NSVV9DTEtTRVRfS0VZ
KTsKPiAgIAo+ICAgZXJyX2Nsa19vZmY6Cj4gICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHVzYjIt
PnJlZl9jbGspOwo+IEBAIC05MCwxMCArMTA3LDI3IEBAIHN0YXRpYyBpbnQgYmNtX25zX3VzYjJf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAkJcmV0dXJuIC1FTk9NRU07
Cj4gICAJdXNiMi0+ZGV2ID0gZGV2Owo+ICAgCj4gLQl1c2IyLT5kbXUgPSBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKHBkZXYsICJkbXUiKTsKPiAtCWlmIChJU19FUlIodXNi
Mi0+ZG11KSkgewo+IC0JCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIG1hcCBETVUgcmVnc1xuIik7
Cj4gLQkJcmV0dXJuIFBUUl9FUlIodXNiMi0+ZG11KTsKPiArCWlmIChvZl9maW5kX3Byb3BlcnR5
KGRldi0+b2Zfbm9kZSwgImJyY20sc3lzY29uLWNsa3NldCIsIE5VTEwpKSB7Cj4gKwkJdXNiMi0+
YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiArCQlpZiAo
SVNfRVJSKHVzYjItPmJhc2UpKSB7Cj4gKwkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIG1hcCBj
b250cm9sIHJlZ1xuIik7Cj4gKwkJCXJldHVybiBQVFJfRVJSKHVzYjItPmJhc2UpOwo+ICsJCX0K
PiArCj4gKwkJdXNiMi0+Y2xrc2V0ID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShk
ZXYtPm9mX25vZGUsCj4gKwkJCQkJCQkgICAgICAgImJyY20sc3lzY29uLWNsa3NldCIpOwo+ICsJ
CWlmIChJU19FUlIodXNiMi0+Y2xrc2V0KSkgewo+ICsJCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0
byBsb29rdXAgY2xrc2V0IHJlZ21hcFxuIik7Cj4gKwkJCXJldHVybiBQVFJfRVJSKHVzYjItPmNs
a3NldCk7Cj4gKwkJfQo+ICsJfSBlbHNlIHsKPiArCQl1c2IyLT5kbXUgPSBkZXZtX3BsYXRmb3Jt
X2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKHBkZXYsICJkbXUiKTsKPiArCQlpZiAoSVNfRVJSKHVz
YjItPmRtdSkpIHsKPiArCQkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIERNVSByZWdzXG4i
KTsKPiArCQkJcmV0dXJuIFBUUl9FUlIodXNiMi0+ZG11KTsKPiArCQl9Cj4gKwo+ICsJCWRldl93
YXJuKGRldiwgInVzaW5nIGRlcHJlY2F0ZWQgRFQgYmluZGluZ1xuIik7Cj4gICAJfQo+ICAgCj4g
ICAJdXNiMi0+cmVmX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJwaHktcmVmLWNsayIpOwo+IAoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
