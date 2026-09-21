Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C089C982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 13:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb2Nzj0xFHGBEUlTK2OtbZ0TH2YH7t21g/N8I2kYYcw=; b=QmuDfDZ973Tmae
	K9I+owE8CZ6AVmicGXeBWCvrBMCNZD2nexOx5+u7Bvxaoif7YxT4itrjFtY+6TCTBZFr8G31ktfp3
	HaV9IZ8/MiTJCxOshBdnZqtHv9LKYLMqZQyiJYd3LV25AxSjLIzFMagQ8U3TlBnOZR67dHnKmftBh
	Y36ACkhlhkOxumejr73dvH6kutvz8bM7U5i07fZ4SOah3iPEb74DhEw7gBVwCoMlnNM90gysMgMKM
	CQj69e9CRnspLaz46i+n9oD88WZJ++JHP804r2J42bbuPTcgOtAysOc6iKM4A1+9Sv32a/oizXnaO
	ULhQfd1OLDovSeoNmyJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8eMZ-00000002Hxo-3sdP;
	Mon, 21 Sep 2026 13:47:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8eMX-00000002Hwk-0A9e
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 13:47:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAdxd91413956
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 13:47:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qw3t/mWs9aOWgBnoW6d2vvKjBJYC5DsOvlhnmcywFhA=; b=cPzCIwA5jX3DywmU
	1HVITkOKj4B7k+UL3iJ5a56zVYzUB5jyFFP2+URe6bEr1JwwJoTZv0OprC65GVSe
	mMqLlBOmEJmaIIHljNf7/xpTZWoCOL5cZYrGy5/ZaQyLcP7hxqY7ZFrfILY2KqXA
	2a9SC1erMrqCXivYEsKbqjOuPHLIZADksb05nacccmkuORRKfTULMzYrerHqC0zf
	ZFwiQj932PHmfWymyjn+VH4sI77V6p/XC2XLR5kfq4myAFc4vDIiPSirk76mvA+/
	hhFDEtLgWWivC1d9STqdbOWNV5GziUPFPAn4Elb+2OG4Vox6wBTcsaiD87yAXE+3
	XAPRZQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu01d1h3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 13:47:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2db87f759c5so59170245ad.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789998429; x=1790603229; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qw3t/mWs9aOWgBnoW6d2vvKjBJYC5DsOvlhnmcywFhA=;
        b=ETsVaBlJ3Jej/i9XFN4jOkhS7yrlr0rpDdM0j/H4PnPldJdDhrVLLl9OvjmLZ7dmTo
         NMxmbxLhtCQc+Xs9AQBKHi9xEM73+pA9aw46MQ3TUMJser28lkDMWerEbmvv1dBAUIDc
         K3a5hezqs7ptidt+ewqWojrj0VSfBYFM2Jpth26G0HfiXS61/znxxG+xcQ0s2HA/yWEE
         TY1tHTtk5FIQqDxJdP8EreaUGplsxUGiH9z44qPiWvTsmUCNqmwuyAqdbrCwbC691eS8
         kmFS2MthdrfoxIVf7iZj2l6cVnvWh5VhANG7vL2byP5TObXVY7H31+0kxNnHg48h78/B
         HxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789998429; x=1790603229;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qw3t/mWs9aOWgBnoW6d2vvKjBJYC5DsOvlhnmcywFhA=;
        b=XHE0i4P+MzWTFPozhxM889L8581f4LkiIGhCtvLLESwOEuN7EvEXXWLKvMfEilik20
         miP/gDIexPVknhAuONp/5ynZxJX/jjCoUUz8aOPWxZSlwIyoTx8rff3El9tPDJSEGMF0
         a9Vi9CAabwBlbeSP8DoS1P9ah3gnfTVL6ywB/2OVHu+xXWX7DgNw+z1uwpq1ZDG7h22P
         VvIPZr9P6fqvaPYnCwEj6UStvQFHBW5LzPmw5jplWtK2Hv7PHe6udXMlMXdosI8SqYKR
         9otr+nocNs104QvUUEZGIYmjanFFBzxnNHROd9IbjRoHGDf6dBfbxPE3QN5Fkjv2c0IZ
         drpQ==
X-Forwarded-Encrypted: i=1; AKwUvBxfGs27llyk/n1DhyWJ4+zrRgJXGzekexCjkafFhjpLLz58Pv5cMBPii4QU7ImQWCVHvwigSwGrDCc=@lists.infradead.org
X-Gm-Message-State: AFuF++nd3R7mhOW4Z/FkAAC6hcko9Mmn1BNPYhc4PoZmTIKXoUCY6XV/
	U/EMb/4g1i48h4nVB8KHCjkLpqYLD+ML7T0gEsDVKUmOOTv9pZ1FckNsbC6x5Sew2HcMTdq4OpX
	gUDvxNsMfmrraE1hqISNc8xiT1JzCUnDoj8L/FLY19+LQMTCxCRUrdF5aFhDxVDwRv+64
X-Gm-Gg: AYBFou30f4RAPFd5S+zUKfetXY0U5Zzbu070IuiopI3olrF0zwh0/j3/DelAY2RvIS/
	l43QAnqek4yT0CsA4Ba4qcAncwKFFEcvjguyNws6e79Pc5DH95r1VlDxRr4S+56bkP6QkWML4sO
	7vlzWyA+/zoV5mz95HHMqEeRqUgSABlr4qQG7Ek+D/S3axN6nH46Tu7DfXId8MzBSMN9WvQ5uD+
	xFQ/WizNrMlIWSXstHkY7RbPB1BaD40Ehpoj+t4olYZnwXhc8vXuuwZVwv0/1yvis0QZReusxIF
	3yJgjmtmzULn3XRmQHgh7eG0wAYuIWDpDUZ/vvOGIfdgdFX/veIbSaStwkAKjBrZ94nlKRrsRjt
	sG0sZFvcGLLgLHyRAqoE+ltHKNQyucn98lyI=
X-Received: by 2002:a17:903:2f0f:b0:2d8:d4d0:7930 with SMTP id d9443c01a7336-2ddb1b98b90mr155544065ad.20.1789998428680;
        Mon, 21 Sep 2026 06:47:08 -0700 (PDT)
X-Received: by 2002:a17:903:2f0f:b0:2d8:d4d0:7930 with SMTP id d9443c01a7336-2ddb1b98b90mr155543555ad.20.1789998428217;
        Mon, 21 Sep 2026 06:47:08 -0700 (PDT)
Received: from [192.168.29.146] ([49.43.232.81])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc18032d5sm34621395ad.83.2026.09.21.06.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 06:47:07 -0700 (PDT)
Message-ID: <7b5bec8a-87ed-4363-ac62-3e14f7619f13@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 19:17:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom,shikra-pcie: Document the
 Shikra PCIe Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
 <20260901-silent-pearl-shrew-c63a16@quoll>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260901-silent-pearl-shrew-c63a16@quoll>
X-Proofpoint-ORIG-GUID: DgIlJAOrb6UJov-8VzWxVh02IDsOqtGK
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDIwMCBTYWx0ZWRfX9xxljcHy/Fed
 FEn+4cmjmVbV9MGEnMMhLS9t+dVcxLT86zDiEe7PyAhRF3zs+WxcUMBxiI1Bm1kNf2MYgxNZRhS
 Tvd2mih4PfFFh27Cao9vpA+TNWRpM8U=
X-Proofpoint-GUID: DgIlJAOrb6UJov-8VzWxVh02IDsOqtGK
X-Authority-Analysis: v=2.4 cv=Ht7jiETS c=1 sm=1 tr=0 ts=6ab13562 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=gjxls31er4aXgMEaaoPcOA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=tLOCWTNIkaiYH31-AwAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDIwMCBTYWx0ZWRfX6wnh9/GZq9Lu
 16kkfqAALe1vlnuSomNNcYmSvXKPGdc+dTFX80sgKzXnpnQHRTAABxl225MZ0aP55OkZDBgXbwh
 tT0H/1/zYA3X/kwowZu4NeYZo4IIZzu2vP+MXLvg/S4ylhBnrstOmTEffrcXN4Xxfxqnrk3C+fT
 wmHttL75Ah0UsQR5vkMUC01BFAS14xodoW1xNu6WMhMZE11ffN/vJ6KhM3hPZQYEU5ahzXtq/RI
 aqkE9I9nEFZem98JHhpBP6v3pqXzbFPbL0qdCpp49NQ6iQ02+05FARqWIpYo90SIaMewTxwIv/e
 h6cUZPwpJxUF3R5sX79W+YD6sQbJ8htLQq5jUJUpuuzhYz4shwGikrb5OzpIFTopxaDJKJn/zBI
 hK2Z3dDTqK/ffNxKcRTefRtEbXjdyQNP+vnuFrZ7mVfi8LS5H8/7bAdFqHCvbjubt3tdgWOeuyo
 aCfvwGFkxhT4zV5oG0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_064717_201676_E3266951 
X-CRM114-Status: GOOD (  18.48  )
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

Ck9uIDkvMS8yMDI2IDI6MTIgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gTW9u
LCBBdWcgMzEsIDIwMjYgYXQgMTI6NTY6MDJQTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBUcml2ZWRp
IHdyb3RlOgo+PiBBZGQgYSBkZWRpY2F0ZWQgc2NoZW1hIGZvciB0aGUgUENJZSBjb250cm9sbGVy
IGZvdW5kIG9uIHRoZSBTaGlrcmEKPj4gcGxhdGZvcm0uCj4+Cj4+IFNoaWtyYSBjb250cm9sbGVy
IHN1cHBvcnRzIHVwdG8gUENJZSBHZW4zIGJ1dCB0aGUgUEhZIGlzCj4+IG9ubHkgY2FwYWJsZSBv
ZiBHZW4yLCBoZW5jZSB0aGUgbWF4IGxpbmsgc3BlZWQgIGlzIGxpbWl0ZWQKPj4gdG8gR2VuMiB0
byBhdm9pZCBsaW5rLXVwIGZhaWx1cmVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdXNocnV0IFNo
cmVlIFRyaXZlZGkgPHN1c2hydXQudHJpdmVkaUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4g
ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxzaGlrcmEtcGNpZS55YW1sICB8IDIx
OCArKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMjE4IGluc2VydGlv
bnMoKykKPj4KPiBXaGF0IGlzIHRoZSBkaWZmZXJlbmNlIGluIHRoZSBiaW5kaW5nIGFnYWluc3Qg
RWxpemE/IElPVywgd2h5IGRvZXMgdGhpcwo+IG5lZWQgYSBzZXBhcmF0ZSBmaWxlIHVubGlrZSBF
bGl6YT8KU2hpa3JhIGRvZXMgbm90IGhhdmUgdGhlIENvbmZpZyBOb0MgQVhJIGNsb2NrIHVubGlr
ZSBzbTg1NTAgLyBlbGl6YS4gQXBhcnQKZnJvbSB0aGF0LCBtaW5JdGVtcyBmb3IgcmVnwqAgYW5k
IGludGVycnVwdHMgbmVlZCB0byBiZSB1cGRhdGVkLiBJIGFjdHVhbGx5CmRpZG4ndCBzZWUgYW55
IGJpbmRpbmdzIHdpdGggYSBjbG9jayBjb25zdHJhaW50IGFkZGVkIGZvciBvbmx5IGEgc2luZ2xl
IApjb21wYXRpYmxlLgoKRG8geW91IHN1Z2dlc3QgY29uc3RyYWluaW5nIHNoaWtyYSBjbG9jay1u
YW1lcyBhbmQgb3RoZXIgcHJvcGVydGllcyAKdW5kZXIgYW4gaWYKYmxvY2sgaW5zaWRlIHNtODU1
MCBiaW5kaW5nIGl0c2VsZiA/Cj4KPiAuLi4KPgo+PiArICAgICAgICAgICAgcmVzZXQtbmFtZXMg
PSAicGNpIjsKPj4gKwo+PiArICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmZ2NjIEdDQ19Q
Q0lFX0dEU0M+Owo+PiArCj4+ICsgICAgICAgICAgICBtYXgtbGluay1zcGVlZCA9IDwyPjsKPj4g
Kwo+PiArICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmcGNpZV9vcHBfdGFibGU+
Owo+PiArCj4+ICsgICAgICAgICAgICBwY2llX29wcF90YWJsZTogb3BwLXRhYmxlIHsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9pbnRzLXYyIjsKPiBB
cmUgeW91IHN1cmUgZHQtY2hlY2stc3R5bGUgZG9lcyBub3QgY29tcGxhaW4/CkFDSydkCj4KPj4g
Kwo+PiArICAgICAgICAgICAgICAgICAgICAvKiBHRU4gMSB4MSAqLwo+PiArICAgICAgICAgICAg
ICAgICAgICBvcHAtMjUwMDAwMCB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3Bw
LWh6ID0gL2JpdHMvIDY0IDwyNTAwMDAwPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZXF1aXJlZC1vcHBzID0gPCZycG1wZF9vcHBfbG93X3N2cz47Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgb3BwLXBlYWsta0JwcyA9IDwyNTAwMDAgMT47Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgb3BwLWxldmVsID0gPDE+Owo+PiArICAgICAgICAgICAgICAgICAg
ICB9Owo+PiArCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
