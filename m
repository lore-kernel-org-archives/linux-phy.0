Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3280C54E71
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 13:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MuBSkcPTgKTm1pTPXk70QfmZ0M1kpBqSETjb0FkWBI=; b=h4kvlVZjyD0YSH
	QuckDib+jMbG6mTrzXUuZFeWrQjgqQ2dch9J25KvFWQolq/O5KRZJT7vJh1kIyh3VipapMwHbaIMM
	BG5xmt9on2H7Gn2U/1qCobmmdcbJcxp0USmnQ8qRgXThV+lSAoj2rq7O65YZhXWwm4/sheIs6tPM/
	p0XuCrHfEiz686jukToo0J9PPakeAyDb9hCIsajJ1SUAaT6zHhRaOwpb+Ld+VgOPdJ6k4PxgNF0Ty
	oxs51BIjt9r6c2rFmP+GQqP8CV4o3+s8yPcwv+ZYqCquyKcHkReHurvn4qJUGF4cBuAfgXRAJbKCR
	zoTV0tWYkkPYUL8pV+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjvY-0000000G0km-34HC;
	Wed, 21 May 2025 13:56:12 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjGA-0000000Ftk2-2FtJ
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:13:28 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-30e7bfef364so5167275a91.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747833205; x=1748438005; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DowZvl7qA/uAhVQuHMif7vNt8RT6sHwwCijVL4Xt204=;
        b=VHJVdYRu3QF/E+GBj/hS9nqDuccN9j6YD62uiGSpquuKh2e0rQMd/swo0xLDLAbRcm
         oOCvKBb6jX/wZMHdvjxQnsvW3TmZXKZSn+dQgiflIzwVacBO/Sp4yzwxF1bWEy7JN4G7
         /VE9zhncKtOdGuoE6MZo/JB2VNw7SDwYaYu+AIy++KujPTnVWzTawY5LjGUgaUxtbthz
         SMMTzj/Y+dBAg/bJvsmTf6S44oTRo1rWRIckmOLfOmAtQMInjubcp3fLKyWs6L2gjgoM
         R820o6fOqsbEO/v6JT+c/1ZcOMRvItWa/n1Mf01u/n0g485H9HAXWZsGKjeOyAm/okpv
         xOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833205; x=1748438005;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DowZvl7qA/uAhVQuHMif7vNt8RT6sHwwCijVL4Xt204=;
        b=E/X+XPNGbwHMkH0eMIQEO0AS9jNJFhvI6x6Sy4YbtdegjFhbE80NR2vFr1U1ZTMAmu
         MkO3vKo4vuhUj1urqNodkKNszE3wNAfjSL7IGhAA5fCo5hwzY1kKA/P+os4TRnoP4zrI
         vOqdbYHydmqWICuG+gtsFXuIcaUETftZ8mx3SZSpp8lnyJomDaiZN3/wkDmBg53k0np5
         W7W04/bRjngigaPr6BqQ4is3Tk0PqUeNcM75yuPjK71lt/a6nVc8t1x6YQUhNd3VEetR
         55jbR5Y+LwCjMZHjAFRNmchTBQcD5PWVgYXmWZi4Hd+eA6LiuYNR2Xeql4SnREfWlS11
         puoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9/4iXtvZ3Td8N3rKlR6Zz0TW9cPqEovbEAfh9BHMXzyWDxOI2VhTHDtNAabeYllLRZWdxfx0KB+c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3mv12kwcJP9GniVJABrWDcHCF+I0CfgPXflYdwZFxDpSMFraa
	FjyafUj1AShi17zhOBaCnhQEWTYJlksOuCfvaj0uSq3riADMLJZi4hH0OXaP+XGerg==
X-Gm-Gg: ASbGnctqzQDkCFYxExj66/A0tjv3anfvXPhFpeMbxePY+hGz9fB+Bjdq9WFHLc9guzT
	5QtOfSVPO7pygkmWCroz6PVbzEov3jDfbauDP8e8a2x0CogtExMSjTM61i71TbhNCo447a9/6Mr
	Da1DcBd+rTPUzaYd5+TRh34D4MtRuj/HoER3YMT0F5pGR90YbqJ536JCcksSSot732P+TFTr6+t
	BLyaRjTBjdzSl+erSuloHUyY/20JjM1GZcgv9A/zOGOZIUQhQCwee9npD701BRJAJB/FJGpfvy9
	mYASMEhkkK1Nf50LrRNqfdC2T+IKe1ZfnfvEYesDRSRM+rB483o5QqtUKo+8
X-Google-Smtp-Source: AGHT+IHiH2b/i4vvEt/AHMBHqqPS0yIzh62+h+3L9fGQ7pUd2qcx4hY61OfXdJ/u8TfPs3p6Vnp3eQ==
X-Received: by 2002:a17:90b:4b0f:b0:2fe:8a84:e033 with SMTP id 98e67ed59e1d1-30e7d4ebdbcmr32842704a91.2.1747833205356;
        Wed, 21 May 2025 06:13:25 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f3638710esm3578317a91.20.2025.05.21.06.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:13:24 -0700 (PDT)
Date: Wed, 21 May 2025 14:13:17 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 03/11] phy: qcom-qmp-ufs: Refactor phy_power_on and
 phy_calibrate callbacks
Message-ID: <g6neasajgbbu3iqy3kj6zzizichz5xvrsktepl46ahxepy2nus@whq2j35lc5fe>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-4-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-4-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061326_585250_638C3486 
X-CRM114-Status: GOOD (  20.82  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTRQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gQ29tbWl0IDA1MjU1M2FmNmEzMSAoInVmcy9waHk6IHFjb206IFJlZmFjdG9yIHRvIHVz
ZSBwaHlfaW5pdCBjYWxsIikKPiBwdXRzIGVuYWJsaW5nIHJlZ3VsYXRvcnMgJiBjbGtzLCBjYWxp
YnJhdGluZyBVRlMgUEhZLCBzdGFydGluZyBzZXJkZXMKPiBhbmQgcG9sbGluZyBQQ1MgcmVhZHkg
c3RhdHVzIGludG8gcGh5X3Bvd2VyX29uLgo+IAo+IEluIEN1cnJlbnQgY29kZSByZWd1bGF0b3Jz
IGVuYWJsZSwgY2xrcyBlbmFibGUsIGNhbGlicmF0aW5nIFVGUyBQSFksCj4gc3RhcnRfc2VyZGVz
IGFuZCBwb2xsaW5nIFBDU19yZWFkeV9zdGF0dXMgYXJlIHBhcnQgb2YgcGh5X3Bvd2VyX29uLgo+
IAo+IFVGUyBQSFkgcmVnaXN0ZXJzIGFyZSByZXRhaW5lZCBhZnRlciBwb3dlciBjb2xsYXBzZSwg
bWVhbmluZyBjYWxpYnJhdGluZwo+IFVGUyBQSFksIHN0YXJ0X3NlcmRlcyBhbmQgcG9sbGluZyBQ
Q1NfcmVhZHlfc3RhdHVzIGNhbiBiZSBkb25lIG9ubHkgd2hlbgo+IGhiYSBpcyBwb3dlcmVkX29u
LCBhbmQgbm90IG5lZWRlZCBldmVyeSB0aW1lIHdoZW4gcGh5X3Bvd2VyX29uIGlzIGNhbGxlZAo+
IGR1cmluZyByZXN1bWUuIEhlbmNlIGtlZXAgdGhlIGNvZGUgd2hpY2ggZW5hYmxlcyBQSFkncyBy
ZWd1bGF0b3JzICYgY2xrcwo+IGluIHBoeV9wb3dlcl9vbiBhbmQgbW92ZSB0aGUgcmVzdCBzdGVw
cyBpbnRvIHBoeV9jYWxpYnJhdGUgZnVuY3Rpb24uCj4gCj4gUmVmYWN0b3IgdGhlIGNvZGUgdG8g
cmV0YWluIFBIWSByZWd1bGF0b3JzICYgY2xrcyBpbiBwaHlfcG93ZXJfb24gYW5kCj4gbW92ZSBv
dXQgcmVzdCBvZiB0aGUgY29kZSB0byBuZXcgcGh5X2NhbGlicmF0ZSBmdW5jdGlvbi4KPiAKPiBB
bHNvIG1vdmUgcmVzZXRfY29udHJvbF9hc3NlcnQgdG8gcW1wX3Vmc19waHlfY2FsaWJyYXRlIHRv
IGFsaWduCj4gd2l0aCBIYXJkd2FyZSBwcm9ncmFtbWluZyBndWlkZS4KPiAKPiBSZXZpZXdlZC1i
eTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+
IENvLWRldmVsb3BlZC1ieTogQ2FuIEd1byA8cXVpY19jYW5nQHF1aWNpbmMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IENhbiBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KClJldmlld2VkLWJ5OiBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoK
LSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMg
fCAyNiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmMKPiBpbmRleCBhNjdjZjBhNjRmNzQuLmFkZThlOWM0YjlhZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBAQCAtMTc5Nyw3ICsxNzk3LDcg
QEAgc3RhdGljIGludCBxbXBfdWZzX2NvbV9leGl0KHN0cnVjdCBxbXBfdWZzICpxbXApCj4gIAly
ZXR1cm4gMDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBxbXBfdWZzX2luaXQoc3RydWN0IHBoeSAq
cGh5KQo+ICtzdGF0aWMgaW50IHFtcF91ZnNfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICB7
Cj4gIAlzdHJ1Y3QgcW1wX3VmcyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gIAljb25z
dCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+IEBAIC0xODI1LDEwICsxODI1
LDYgQEAgc3RhdGljIGludCBxbXBfdWZzX2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICAJCQkJcmV0
dXJuIHJldDsKPiAgCQkJfQo+ICAJCX0KPiAtCj4gLQkJcmV0ID0gcmVzZXRfY29udHJvbF9hc3Nl
cnQocW1wLT51ZnNfcmVzZXQpOwo+IC0JCWlmIChyZXQpCj4gLQkJCXJldHVybiByZXQ7Cj4gIAl9
Cj4gIAo+ICAJcmV0ID0gcW1wX3Vmc19jb21faW5pdChxbXApOwo+IEBAIC0xODQ3LDYgKzE4NDMs
MTAgQEAgc3RhdGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+
ICAJdW5zaWduZWQgaW50IHZhbDsKPiAgCWludCByZXQ7Cj4gIAo+ICsJcmV0ID0gcmVzZXRfY29u
dHJvbF9hc3NlcnQocW1wLT51ZnNfcmVzZXQpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0
Owo+ICsKPiAgCXFtcF91ZnNfaW5pdF9yZWdpc3RlcnMocW1wLCBjZmcpOwo+ICAKPiAgCXJldCA9
IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocW1wLT51ZnNfcmVzZXQpOwo+IEBAIC0xODk5LDIxICsx
ODk5LDYgQEAgc3RhdGljIGludCBxbXBfdWZzX2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+ICAJcmV0
dXJuIDA7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgcW1wX3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5
ICpwaHkpCj4gLXsKPiAtCWludCByZXQ7Cj4gLQo+IC0JcmV0ID0gcW1wX3Vmc19pbml0KHBoeSk7
Cj4gLQlpZiAocmV0KQo+IC0JCXJldHVybiByZXQ7Cj4gLQo+IC0JcmV0ID0gcW1wX3Vmc19waHlf
Y2FsaWJyYXRlKHBoeSk7Cj4gLQlpZiAocmV0KQo+IC0JCXFtcF91ZnNfZXhpdChwaHkpOwo+IC0K
PiAtCXJldHVybiByZXQ7Cj4gLX0KPiAtCj4gIHN0YXRpYyBpbnQgcW1wX3Vmc19kaXNhYmxlKHN0
cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJaW50IHJldDsKPiBAQCAtMTk0Myw2ICsxOTI4LDcgQEAg
c3RhdGljIGludCBxbXBfdWZzX3NldF9tb2RlKHN0cnVjdCBwaHkgKnBoeSwgZW51bSBwaHlfbW9k
ZSBtb2RlLCBpbnQgc3VibW9kZSkKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIHFjb21f
cW1wX3Vmc19waHlfb3BzID0gewo+ICAJLnBvd2VyX29uCT0gcW1wX3Vmc19wb3dlcl9vbiwKPiAg
CS5wb3dlcl9vZmYJPSBxbXBfdWZzX2Rpc2FibGUsCj4gKwkuY2FsaWJyYXRlCT0gcW1wX3Vmc19w
aHlfY2FsaWJyYXRlLAo+ICAJLnNldF9tb2RlCT0gcW1wX3Vmc19zZXRfbW9kZSwKPiAgCS5vd25l
cgkJPSBUSElTX01PRFVMRSwKPiAgfTsKPiAtLSAKPiAyLjQ4LjEKPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
