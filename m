Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F842ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 14:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh+EHxMoBhtFs5Uuykw470ke0TQdGIzhtHIEkWtdxXk=; b=BhY2ecOW8nihZx
	9beR/uvPaGmpQLP2D5UYFMNpqAr3i5gQMTQFROkNrpLAQw/fRPa+b48l/tD7Bx1vaww/63kBhlGyN
	Vjj63KZuyyYsaY3W364UBKSy/onjocS8KopmTyarus7qo5F4OiEHHCizKU6blrnyolhNbx/YgLT9j
	aJY8hgEy8eBfB1LL7nmpcQrwbPdYtFLLT3ZyaP6DhCyMttaBAl/WvgHl0pSOGtx/MApZqFjGBl6sR
	/UFQFQZqfz9Cm/xzaKYGvy8LdzXi0m03CAVshg3h+OY2qWC4wTlyn4mTr/+OmCmH3ovGVBOeUp2NG
	jZKAVea97RQ5NhlyVzrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opW7K-00CNTM-FY; Mon, 31 Oct 2022 14:50:22 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opW7I-00CNQK-5C
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 14:50:21 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 130so10877228pfu.8
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 07:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G61ZtZyzLbGn60Ny6OY1xq5S4nX4pwImvQvsYH0GFno=;
        b=h+AZN1emo1F/GPSOBe9v3NFLYdpHmSzshIlpJlH3Geua8ehCIy/9qpUX9+VfZBg7bB
         z+8OPNVh++U7733AaV+t/Hhr5fWdvoFZkEDIt2fyCBEOHQkm5W0zdn3FV3cVPvm8ZRX3
         peodf6oZ3P+4diGYd3fJsV1qWnIUBuWZysiJ/foPRE6I4YAoAq32x2T/Mt5OAK89kX4e
         j0G7nDVWjst4XqbwiN1vh9oqoHm5ZJP2fMw5OJ8/TagUc6WRfoDjNlFJZ+FqZt4UwsMx
         5jhImqqJN2vpTbV2aFbpn83kSdt/GejJDBBD8qAPSaWv51bV/Dc4bRbUV/8aBr3D2NQI
         L8nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G61ZtZyzLbGn60Ny6OY1xq5S4nX4pwImvQvsYH0GFno=;
        b=FTg2T2b8KT32hhqNONWS5xn4YkiTlO4Gl0G9jNii4Sq4LI2TYX8MBbmmdI+KMUJ48Z
         2ZeJMPIEYM+7J7ryoiESRJ3CR+gR4WZpMCQpu92IWS3/Y10FdEbi0TcEqMnRySYQ1hor
         /HlZdRHSb/rNlsLTn1S9ySXKIc2Yk6vL1bo0hui+u0J677sM6dst6saiJ5dLzqRtQDg8
         gj/MJlCOjyhE2bEwmg+oWNyhSPvkxPrme1RPnCShGewjLkKzQDdBZ2zDRTi49BG2W+cY
         3YQx8+Z1Zgqc8XfVAgwHe8g8NBnCFcLj4lld3pdGtSJ8zrqj2VWWrdNDsmqXoiSgyXLs
         u6Gw==
X-Gm-Message-State: ACrzQf0OkJifi8eSBk65baAMUe3Nqu/naSZTx27mn6gMf1bBT/S0VO1n
	q9/NKrXBLU7TFHW64Zc99VAZ
X-Google-Smtp-Source: AMsMyM5RRehaTeLhtzAe1dhNO1cSAE/tCbXXuTRW2JUlaOB4/VnEV1BmaFq8CdTJHAW9nrBd/e6oGg==
X-Received: by 2002:a65:6bc4:0:b0:439:8ff8:e2e1 with SMTP id e4-20020a656bc4000000b004398ff8e2e1mr13003767pgw.91.1667227815594;
        Mon, 31 Oct 2022 07:50:15 -0700 (PDT)
Received: from thinkpad ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id z184-20020a6233c1000000b0056c47a5c34dsm4685401pfz.122.2022.10.31.07.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 07:50:14 -0700 (PDT)
Date: Mon, 31 Oct 2022 20:20:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 10/15] scsi: ufs: ufs-qcom: Use bitfields where
 appropriate
Message-ID: <20221031145005.GA10515@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-11-manivannan.sadhasivam@linaro.org>
 <01a01fb3-2520-58ce-6432-b278bb8118f5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01a01fb3-2520-58ce-6432-b278bb8118f5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_075020_254192_4736442A 
X-CRM114-Status: GOOD (  20.29  )
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

T24gU3VuLCBPY3QgMzAsIDIwMjIgYXQgMTI6NTg6NTdBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAyOS8xMC8yMDIyIDE3OjE2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBVc2UgYml0ZmllbGQgbWFjcm9zIHdoZXJlIGFwcHJvcHJpYXRlIHRvIHNpbXBsaWZ5
IHRoZSBkcml2ZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICAgZHJpdmVy
cy91ZnMvaG9zdC91ZnMtcWNvbS5oIHwgNTggKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRp
b25zKC0pCj4gPiAKPiAKPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJh
cnlzaGtvdkBsaW5hcm8ub3JnPgo+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLXFjb20uaCBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaAo+ID4gaW5kZXggNDQ0NjZh
Mzk1YmI1Li42Y2IwNzc2NDU2YjMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vm
cy1xY29tLmgKPiA+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaAo+ID4gQEAgLTE3
LDEyICsxNyw5IEBACj4gPiAgICNkZWZpbmUgREVGQVVMVF9DTEtfUkFURV9IWiAgICAgMTAwMDAw
MAo+ID4gICAjZGVmaW5lIEJVU19WRUNUT1JfTkFNRV9MRU4gICAgIDMyCj4gPiAtI2RlZmluZSBV
RlNfSFdfVkVSX01BSk9SX1NIRlQJKDI4KQo+ID4gLSNkZWZpbmUgVUZTX0hXX1ZFUl9NQUpPUl9N
QVNLCSgweDAwMEYgPDwgVUZTX0hXX1ZFUl9NQUpPUl9TSEZUKQo+ID4gLSNkZWZpbmUgVUZTX0hX
X1ZFUl9NSU5PUl9TSEZUCSgxNikKPiA+IC0jZGVmaW5lIFVGU19IV19WRVJfTUlOT1JfTUFTSwko
MHgwRkZGIDw8IFVGU19IV19WRVJfTUlOT1JfU0hGVCkKPiA+IC0jZGVmaW5lIFVGU19IV19WRVJf
U1RFUF9TSEZUCSgwKQo+ID4gLSNkZWZpbmUgVUZTX0hXX1ZFUl9TVEVQX01BU0sJKDB4RkZGRiA8
PCBVRlNfSFdfVkVSX1NURVBfU0hGVCkKPiA+ICsjZGVmaW5lIFVGU19IV19WRVJfTUFKT1JfTUFT
SwlHRU5NQVNLKDMxLCAyOCkKPiA+ICsjZGVmaW5lIFVGU19IV19WRVJfTUlOT1JfTUFTSwlHRU5N
QVNLKDI3LCAxNikKPiA+ICsjZGVmaW5lIFVGU19IV19WRVJfU1RFUF9NQVNLCUdFTk1BU0soMTUs
IDApCj4gPiAgIC8qIHZlbmRvciBzcGVjaWZpYyBwcmUtZGVmaW5lZCBwYXJhbWV0ZXJzICovCj4g
PiAgICNkZWZpbmUgU0xPVyAxCj4gPiBAQCAtNzYsMjQgKzczLDI0IEBAIGVudW0gewo+ID4gICAj
ZGVmaW5lIFVGU19DTlRMUl8zX3hfeF9WRU5fUkVHU19PRkZTRVQoeCkJKDB4NDAwICsgeCkKPiA+
ICAgLyogYml0IGRlZmluaXRpb25zIGZvciBSRUdfVUZTX0NGRzEgcmVnaXN0ZXIgKi8KPiA+IC0j
ZGVmaW5lIFFVTklQUk9fU0VMCQkweDEKPiA+IC0jZGVmaW5lIFVUUF9EQkdfUkFNU19FTgkJMHgy
MDAwMAo+ID4gKyNkZWZpbmUgUVVOSVBST19TRUwJCUJJVCgwKQo+ID4gKyNkZWZpbmUgVVRQX0RC
R19SQU1TX0VOCQlCSVQoMTcpCj4gPiAgICNkZWZpbmUgVEVTVF9CVVNfRU4JCUJJVCgxOCkKPiA+
ICAgI2RlZmluZSBURVNUX0JVU19TRUwJCUdFTk1BU0soMjIsIDE5KQo+ID4gICAjZGVmaW5lIFVG
U19SRUdfVEVTVF9CVVNfRU4JQklUKDMwKQo+ID4gICAvKiBiaXQgZGVmaW5pdGlvbnMgZm9yIFJF
R19VRlNfQ0ZHMiByZWdpc3RlciAqLwo+ID4gLSNkZWZpbmUgVUFXTV9IV19DR0NfRU4JCSgxIDw8
IDApCj4gPiAtI2RlZmluZSBVQVJNX0hXX0NHQ19FTgkJKDEgPDwgMSkKPiA+IC0jZGVmaW5lIFRY
VUNfSFdfQ0dDX0VOCQkoMSA8PCAyKQo+ID4gLSNkZWZpbmUgUlhVQ19IV19DR0NfRU4JCSgxIDw8
IDMpCj4gPiAtI2RlZmluZSBERkNfSFdfQ0dDX0VOCQkoMSA8PCA0KQo+ID4gLSNkZWZpbmUgVFJM
VVRfSFdfQ0dDX0VOCQkoMSA8PCA1KQo+ID4gLSNkZWZpbmUgVE1STFVUX0hXX0NHQ19FTgkoMSA8
PCA2KQo+ID4gLSNkZWZpbmUgT0NTQ19IV19DR0NfRU4JCSgxIDw8IDcpCj4gPiArI2RlZmluZSBV
QVdNX0hXX0NHQ19FTgkJQklUKDApCj4gPiArI2RlZmluZSBVQVJNX0hXX0NHQ19FTgkJQklUKDEp
Cj4gPiArI2RlZmluZSBUWFVDX0hXX0NHQ19FTgkJQklUKDIpCj4gPiArI2RlZmluZSBSWFVDX0hX
X0NHQ19FTgkJQklUKDMpCj4gPiArI2RlZmluZSBERkNfSFdfQ0dDX0VOCQlCSVQoNCkKPiA+ICsj
ZGVmaW5lIFRSTFVUX0hXX0NHQ19FTgkJQklUKDUpCj4gPiArI2RlZmluZSBUTVJMVVRfSFdfQ0dD
X0VOCUJJVCg2KQo+ID4gKyNkZWZpbmUgT0NTQ19IV19DR0NfRU4JCUJJVCg3KQo+ID4gICAvKiBi
aXQgZGVmaW5pdGlvbiBmb3IgVUZTX1VGU19URVNUX0JVU19DVFJMX24gKi8KPiA+IC0jZGVmaW5l
IFRFU1RfQlVTX1NVQl9TRUxfTUFTSwkweDFGICAvKiBBbGwgWFhYX1NFTCBmaWVsZHMgYXJlIDUg
Yml0cyB3aWRlICovCj4gPiArI2RlZmluZSBURVNUX0JVU19TVUJfU0VMX01BU0sJR0VOTUFTSyg0
LCAwKSAgLyogQWxsIFhYWF9TRUwgZmllbGRzIGFyZSA1IGJpdHMgd2lkZSAqLwo+ID4gICAjZGVm
aW5lIFJFR19VRlNfQ0ZHMl9DR0NfRU5fQUxMIChVQVdNX0hXX0NHQ19FTiB8IFVBUk1fSFdfQ0dD
X0VOIHxcCj4gPiAgIAkJCQkgVFhVQ19IV19DR0NfRU4gfCBSWFVDX0hXX0NHQ19FTiB8XAo+ID4g
QEAgLTEwMSwxNyArOTgsMTIgQEAgZW51bSB7Cj4gPiAgIAkJCQkgVE1STFVUX0hXX0NHQ19FTiB8
IE9DU0NfSFdfQ0dDX0VOKQo+ID4gICAvKiBiaXQgb2Zmc2V0ICovCj4gPiAtZW51bSB7Cj4gPiAt
CU9GRlNFVF9VRlNfUEhZX1NPRlRfUkVTRVQgICAgICAgICAgID0gMSwKPiA+IC0JT0ZGU0VUX0NM
S19OU19SRUcgICAgICAgICAgICAgICAgICAgPSAxMCwKPiA+IC19Owo+ID4gKyNkZWZpbmUgT0ZG
U0VUX0NMS19OU19SRUcJCTB4YQo+ID4gICAvKiBiaXQgbWFza3MgKi8KPiA+IC1lbnVtIHsKPiA+
IC0JTUFTS19VRlNfUEhZX1NPRlRfUkVTRVQgICAgICAgICAgICAgPSAweDIsCj4gPiAtCU1BU0tf
VFhfU1lNQk9MX0NMS18xVVNfUkVHICAgICAgICAgID0gMHgzRkYsCj4gPiAtCU1BU0tfQ0xLX05T
X1JFRyAgICAgICAgICAgICAgICAgICAgID0gMHhGRkZDMDAsCj4gPiAtfTsKPiA+ICsjZGVmaW5l
IE1BU0tfVUZTX1BIWV9TT0ZUX1JFU0VUCQlCSVQoMSkKPiA+ICsjZGVmaW5lIE1BU0tfVFhfU1lN
Qk9MX0NMS18xVVNfUkVHCUdFTk1BU0soOSwgMCkKPiA+ICsjZGVmaW5lIE1BU0tfQ0xLX05TX1JF
RwkJCUdFTk1BU0soMjMsIDEwKQo+ID4gICAvKiBRQ09NIFVGUyBkZWJ1ZyBwcmludCBiaXQgbWFz
ayAqLwo+ID4gICAjZGVmaW5lIFVGU19RQ09NX0RCR19QUklOVF9SRUdTX0VOCUJJVCgwKQo+ID4g
QEAgLTEzNSwxNSArMTI3LDE1IEBAIHVmc19xY29tX2dldF9jb250cm9sbGVyX3JldmlzaW9uKHN0
cnVjdCB1ZnNfaGJhICpoYmEsCj4gPiAgIHsKPiA+ICAgCXUzMiB2ZXIgPSB1ZnNoY2RfcmVhZGwo
aGJhLCBSRUdfVUZTX0hXX1ZFUlNJT04pOwo+ID4gLQkqbWFqb3IgPSAodmVyICYgVUZTX0hXX1ZF
Ul9NQUpPUl9NQVNLKSA+PiBVRlNfSFdfVkVSX01BSk9SX1NIRlQ7Cj4gPiAtCSptaW5vciA9ICh2
ZXIgJiBVRlNfSFdfVkVSX01JTk9SX01BU0spID4+IFVGU19IV19WRVJfTUlOT1JfU0hGVDsKPiA+
IC0JKnN0ZXAgPSAodmVyICYgVUZTX0hXX1ZFUl9TVEVQX01BU0spID4+IFVGU19IV19WRVJfU1RF
UF9TSEZUOwo+ID4gKwkqbWFqb3IgPSBGSUVMRF9HRVQoVUZTX0hXX1ZFUl9NQUpPUl9NQVNLLCB2
ZXIpOwo+ID4gKwkqbWlub3IgPSBGSUVMRF9HRVQoVUZTX0hXX1ZFUl9NSU5PUl9NQVNLLCB2ZXIp
Owo+ID4gKwkqc3RlcCA9IEZJRUxEX0dFVChVRlNfSFdfVkVSX1NURVBfTUFTSywgdmVyKTsKPiA+
ICAgfTsKPiA+ICAgc3RhdGljIGlubGluZSB2b2lkIHVmc19xY29tX2Fzc2VydF9yZXNldChzdHJ1
Y3QgdWZzX2hiYSAqaGJhKQo+ID4gICB7Cj4gPiAtCXVmc2hjZF9ybXdsKGhiYSwgTUFTS19VRlNf
UEhZX1NPRlRfUkVTRVQsCj4gPiAtCQkJMSA8PCBPRkZTRVRfVUZTX1BIWV9TT0ZUX1JFU0VULCBS
RUdfVUZTX0NGRzEpOwo+ID4gKwl1ZnNoY2Rfcm13bChoYmEsIE1BU0tfVUZTX1BIWV9TT0ZUX1JF
U0VULCBGSUVMRF9QUkVQKE1BU0tfVUZTX1BIWV9TT0ZUX1JFU0VULCAxKSwKPiAKPiBOaXQ6IEkn
ZCBqdXN0IGRlZmluZSB0aGUgdmFsdWUgdG9vIGFuZCB1c2UgdGhlIGRlZmluZWQgbmFtZSBoZXJl
Lgo+IAo+ID4gKwkJICAgIFJFR19VRlNfQ0ZHMSk7Cj4gPiAgIAkvKgo+ID4gICAJICogTWFrZSBz
dXJlIGFzc2VydGlvbiBvZiB1ZnMgcGh5IHJlc2V0IGlzIHdyaXR0ZW4gdG8KPiA+IEBAIC0xNTQs
OCArMTQ2LDggQEAgc3RhdGljIGlubGluZSB2b2lkIHVmc19xY29tX2Fzc2VydF9yZXNldChzdHJ1
Y3QgdWZzX2hiYSAqaGJhKQo+ID4gICBzdGF0aWMgaW5saW5lIHZvaWQgdWZzX3Fjb21fZGVhc3Nl
cnRfcmVzZXQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiA+ICAgewo+ID4gLQl1ZnNoY2Rfcm13bCho
YmEsIE1BU0tfVUZTX1BIWV9TT0ZUX1JFU0VULAo+ID4gLQkJCTAgPDwgT0ZGU0VUX1VGU19QSFlf
U09GVF9SRVNFVCwgUkVHX1VGU19DRkcxKTsKPiA+ICsJdWZzaGNkX3Jtd2woaGJhLCBNQVNLX1VG
U19QSFlfU09GVF9SRVNFVCwgRklFTERfUFJFUChNQVNLX1VGU19QSFlfU09GVF9SRVNFVCwgMCks
Cj4gCj4gTml0OiBGSUVMRF9QUkVQIGlzIGFsd2F5cyAwLgo+IAoKSSBrbm93IGJ1dCB0aGlzIG1h
a2UgdGhlIGNvZGUgaW4gc3luYyB3aXRoIHJlc2V0IGFzc2VydC4KClRoYW5rcywKTWFuaQoKPiA+
ICsJCSAgICBSRUdfVUZTX0NGRzEpOwo+ID4gICAJLyoKPiA+ICAgCSAqIE1ha2Ugc3VyZSBkZS1h
c3NlcnRpb24gb2YgdWZzIHBoeSByZXNldCBpcyB3cml0dGVuIHRvCj4gCj4gLS0gCj4gV2l0aCBi
ZXN0IHdpc2hlcwo+IERtaXRyeQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
