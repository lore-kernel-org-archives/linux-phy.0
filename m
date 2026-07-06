Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE1FC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 03:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLuJWZiCFTTRsWBv85F8qfiszf/FPocPhgMI2GDAQxo=; b=CyZtP0jmSC49Zy
	G57zfzzzJlBGL8fzwqkM5AuVmZkBC9dP2qeTOPoXrULfqHHWUjmwoc6a9nZ/SMNLjR1rywbQtDLq0
	R8YadRhSdfSywF8nX8Co3lEB387K2UCe+AtkuMLw0lbZHq65V8HmRGTJ2F1Z0UNZZTdcM+ihMPaSP
	7tqnn/USS9uarrNmG5mTdrYwdrYtmzSwge8lQrGNC0r0z7vpToyeHASq/ezBolIfZUXQtzUY+W7FN
	zpH/GrQeLrw1dL8S13iblIfVfisnKmd0jUcAUANsOcnPHefYXD6G9GdB5nfx2DUG00JfjjXO2YjCD
	s81Tq/J5AkYu8/YiUyeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wga0g-0000000BSZr-2mrw;
	Mon, 06 Jul 2026 03:28:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wga0d-0000000BSZJ-41of
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 03:28:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 665M03NV2860399
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 03:28:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eK6+g7ouEyZ55quMY4a0IzhrH/gHcqLqIlm2JyFXWbw=; b=jz5EivmAlCnGEhaL
	5snzz6HCL+8livh/joYJB+fiMly42Lz4hQz94ZtFCXintREAtNsVIk96M126b5ZN
	7RhA80pPsuc7SQn+hdd4AQnGJcwkNKd3lIW3t6+gCLY3EBdgN/L0apOwDJXDkfbZ
	xZnRCCUQW23gm+bS5cIX/ws/bxSv37QOoyvaefzRjExBWFuMumCkTBm0RuMtDBIF
	5G5KZcotgOmbQSBhUUO2GtdKfbyA4n/UKTLX7Mq/bjZD5m0Vezn4oK+4W1DlkG3D
	kCUvvOMq1SmSUviOD5Jj4CEAW7THLe0S0/WX9T9RBtsM7O6X7tannBb455G1SxSE
	ZxNFqg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6srvm7nq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 03:28:37 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8479c6c6cbeso2352257b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 20:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783308517; x=1783913317; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eK6+g7ouEyZ55quMY4a0IzhrH/gHcqLqIlm2JyFXWbw=;
        b=c8Mp7kUMlcWZd2wma6Rx9qHrpj3QlEeSWyHS9auCSCcKroyGCHCaV2uvKlzLvvR8kQ
         h/QkheSro5EYOm2Jd6ltB7SbyIyXHwa/EfRNWTxfvKr2GsY5acEZzoj7UNgvdTCIy0YL
         RILXlcsyN5TtN9ryD9fSgiD22Uc/PlYJrxrU0z2UBujAQQN6mhwbQw6RKWtzujNYYn3q
         amA4d9Pqgh3ezsdTle9isAzt4RuGxBzwy6zNmT+0BXSPeqsqIqRdpt9LmA1gZPz5SAP4
         uDogen39dlAV7nb1+lL2ydsOrgoviBFz70nzZDfv+SLtm8pvwFYg0PUsZfMN9KL8onNI
         lCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783308517; x=1783913317;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eK6+g7ouEyZ55quMY4a0IzhrH/gHcqLqIlm2JyFXWbw=;
        b=BasvJK/UcU6KgVvWGBx9gU51PZj4SQc2aRa7h8IkQHw5TkFx55qrxV1hGKk6XAWx1X
         cAVmWeurH5iEA/+aD1JZJcZtfke7u+V/ruQKQscMSUqYVF1I1pcLc5ladHFcoo6dnRvH
         Ga8vous7AKN3bVBoTbSu98OY0VC4T8isHKFDMdcVzZ1DdlqFFeI3CgnHiGs6qWjXoIjo
         5/Y7k61npAYaz1BCef520YByHdViiKaLY1Bu2XxXwlYxoMjfzSwZx8bZLqPelT6nRRo7
         O4FYPqMwOWdrIwoRp82XrkLArLj0M0SnuPeGzPczLopBnVFWtVDMhpx4DRpcxTttkJ7J
         vwuQ==
X-Forwarded-Encrypted: i=1; AHgh+RqI+LIFXxenfnFuRwC/cbC4TZONw1QlS5bZatB2t/gZd3MWqNMecO4RtfHnErs7xWgvorLULvfqaHw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1lLDz60WEcSZR7/ETXebnvuXLBzUv56/MvfFWkKAPeWkiw2EL
	vXhwwGioJavnlp2NzuBAhuvQ7vrKSR09+FP33NGJr8ANa6Odsg5cxvWsLpa2xd0dYsO4OWxGhIJ
	D+EZ5Hh7PCsUBuZqy4x0mpR8zBoEhoEt21y6ZQUktynsKsHPXOYB9MJfEMUduc1O1zaTz
X-Gm-Gg: AfdE7ckjjNjoMS2GP1H68hilGDzGMg4RgOSfCu3D3SOG0CZuGf/44/tXSwdoZ6oLjk4
	H36vh6PxahGYgSIrfGniCMFbR4X976bQr/RpZkwrkTa9FfY2Cv91k5h6GkWJL4i7xfPKxvzoVhv
	0VESLk8h/90ELp6b1cn+4GczVVO+q34AxoIe1MHLtzmeYNjf5+SegJITZCoTEMKlv6qt1OMDkeG
	EBh3T5/NQPC6cVaIr6qQPYJqz09wRBKKUaeILCb1Q12x+4+Pm4MWBsz36ATkbDBRZ0BCiQ2uuFs
	+Qhm9ScA3RLJhgATP0lPhUOTYWaffxQPSx4e9PTSE3gMaX9RqoSmxxKl4rtlEQiQZ+QXxByaw5v
	+3kOz/nk5y3cqNdot1XLfJY/AMiaR1S5UThjToEzzjdw+F/7WUYjIZ0Ah9Q==
X-Received: by 2002:a05:6a20:4309:b0:3a3:a9c4:3d60 with SMTP id adf61e73a8af0-3c03e25825cmr8268380637.27.1783308516600;
        Sun, 05 Jul 2026 20:28:36 -0700 (PDT)
X-Received: by 2002:a05:6a20:4309:b0:3a3:a9c4:3d60 with SMTP id adf61e73a8af0-3c03e25825cmr8268347637.27.1783308516162;
        Sun, 05 Jul 2026 20:28:36 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30f0b816a42sm76309105eec.9.2026.07.05.20.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 20:28:35 -0700 (PDT)
Date: Sun, 5 Jul 2026 20:28:33 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply
 support for Glymur
Message-ID: <aksg4arKjUXdQfA2@hu-qianyu-lv.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
 <8811c181-9caf-4797-8e17-52311702e292@oss.qualcomm.com>
 <akJhrpyMuLnoXzJM@hu-qianyu-lv.qualcomm.com>
 <f2c68d67-1b12-40b3-8097-5b863d7710ac@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2c68d67-1b12-40b3-8097-5b863d7710ac@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TcamcxQh c=1 sm=1 tr=0 ts=6a4b20e5 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mkIokxEfF-L8pB4xSJ8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: aVKoareTbkKKdx8rowkxKBLIMyxfuV6o
X-Proofpoint-GUID: aVKoareTbkKKdx8rowkxKBLIMyxfuV6o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDAzMSBTYWx0ZWRfX0NI5eKfTkubQ
 4w+wMSOuyiLELpknEdQAkIJh215bvuxRYj5RmKPSNTO1zpA4KoNeQpVfy6y8jjbfYMpTI7z/LDv
 30QbYOw5UppL7nR+ePIA4Q2Yt7AFsvo9cPKk4460NBc4nXS4z3LJQpdeFtL1Yt6KRGjVIyJlKdz
 xxiSFUS8l/Y+MdSWx6QTxI8m8uazUnjQeWKr8abiwsN9O92cG9UPk/NFHg1vBMH5Avj1TR9K4Hf
 iea1A53KAfW+CRBJ4vPVNP6p4hsZ9pDkSU2dS5I6rOQ2d5hrwcggUOtFkts3UjSAs6+r7bJi+A7
 HsfoLcK62u4v8PMTXRXPnLQ1iajRdTPw3ln21YmnA3zi84rdMpRo0UyTFUyKMtXNIJZPIntIIrT
 uGgZHd3sapTQzgqK573QlAM4S4gf+GgqI2ZG0rewMdlhfS07Z2abEi4HWhzjnGHQZO9lSy23iql
 f6Q43sOIoo72Q5HVKgg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDAzMSBTYWx0ZWRfX2iWKSZvR9doN
 zcohVuLZrl8WqcXnW/ThwVcqdky71KFfG0YA2LgEvLkTekyEJoGstnvVFCGyc5/NJv6muGuMf4b
 IOmFhwZUQOJPeZ5d0sgKMrBgfjiEXgo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-05_02,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_202840_118627_EFECED64 
X-CRM114-Status: GOOD (  29.55  )
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

T24gTW9uLCBKdW4gMjksIDIwMjYgYXQgMDI6MTg6MzVQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA2LzI5LzI2IDI6MTQgUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4gT24gTW9uLCBK
dW4gMjksIDIwMjYgYXQgMTI6NTE6NTVQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3cm90ZToKPiA+
PiBPbiA2LzIzLzI2IDM6MDUgUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4+PiBUaGUgUENJZSBRTVAg
UEhZcyBvbiBHbHltdXIgcmVxdWlyZSBib3RoIHJlZmdlbiBmb3Igc3RhYmxlIHJlZmVyZW5jZQo+
ID4+PiB2b2x0YWdlIGFuZCBxcmVmIGZvciBzdGFibGUgcmVmZXJlbmNlIGNsb2NrLiBUaGUgcmVm
Z2VuIHJlcXVpcmVzIHR3byBwb3dlcgo+ID4+PiBzdXBwbGllczogdmRkYS1yZWZnZW4wcDkgYW5k
IHZkZGEtcmVmZ2VuMXAyLgo+ID4+Pgo+ID4+PiBjYW4gYmUgZXh0ZW5kZWQgaW4gdGhlIGZ1dHVy
ZS4KPiA+Pj4KPiA+Pj4gVGhpcyBzZXJpZXMgY3JlYXRlcyBhIEdseW11ci1zcGVjaWZpYyBzdXBw
bHkgbGlzdCBpbmNsdWRpbmcgdGhlIHJlZmdlbgo+ID4+PiBzdXBwbGllcyBhbmQgdXBkYXRlcyBi
b3RoIEdlbjV4NCBhbmQgR2VuNHgyIGNvbmZpZ3VyYXRpb25zIHRvIHVzZSBpdC4KPiA+Pj4KPiA+
Pj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+Cj4g
Pj4+Cj4gPj4+IENoYW5nZXMgaW4gdjI6Cj4gPj4+IC0gQWRkIGR0cyBwYXRjaCBpbiB0aGlzIHNl
cmllcy4KPiA+Pj4gLSBSZXdvcmQgY29tbWl0IG1zZyBvZiBkdGJpbmRpbmcgcGF0Y2guCj4gPj4+
IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMjA4LXJlZmdl
bi12MS0wLTg3Y2E4NGZkNzhiM0Bvc3MucXVhbGNvbW0uY29tLyAKPiA+Pj4KPiA+Pj4gLS0tCj4g
Pj4KPiA+PiBJcyB0aGlzIG5lY2Vzc2FyeSAoZm9yIEdseW11cikgbm93IHRoYXQgd2UgY29ycmVs
YXRlZCBzb21lIG9mIHRoZQo+ID4+IFRDU1IgY2xvY2tzIHdpdGggdGhlIHJpZ2h0IG5vZGVzPwo+
ID4gCj4gPiBUaGlzIHBhdGNoIGlzIG5lY2Vzc2FyeSBmb3IgZ2x5bXVyIGFuZCBtYWh1YSBhbmQg
b3RoZXIgUXVhbGNvbW0gdGFyZ2V0cywKPiA+IHdoaWNoIGNhbiBiZSB2ZXJpZmllZCBmcm9tIHRo
ZSBSRUZHRU4gcGFnZSBhbmQgcG93ZXIgZ3JpZCBwYWdlIG9uIGlwY2F0Lgo+ID4gCj4gPiBUYWtl
IEdseW11ciBQQ0llMyBQSFkgYXMgYW4gZXhhbXBsZTogaXQgcmVxdWlyZXMgdHdvIFJFRkdFTnMg
4oCUIFJFRkdFTjAgZm9yCj4gPiB0aGUgUEhZIGl0c2VsZiBhbmQgUkVGR0VONCBmb3IgUVJFRi4g
SW4gdGhlIFRDU1IgZHJpdmVyLCBvbmx5IHRoZSBMRE9zIGZvcgo+ID4gUkVGR0VONCBhcmUgdm90
ZWQsIG5vdCBSRUZHRU4wLiBUaGlzIGlzIGludGVudGlvbmFsOiBlYWNoIGNvbnN1bWVyIGlzCj4g
PiByZXNwb25zaWJsZSBmb3Igdm90aW5nIHRoZSBMRE9zIG9mIHRoZSBSRUZHRU4gaXQgdXNlcy4g
U2luY2UgUVJFRiB1c2VzCj4gPiBSRUZHRU40LCB0aGUgVENTUiBkcml2ZXIgdm90ZXMgdGhlIFJF
RkdFTjQgTERPczsgc2luY2UgdGhlIFBIWSB1c2VzCj4gPiBSRUZHRU4wLCB0aGUgUEhZIGRyaXZl
ciB2b3RlcyB0aGUgUkVGR0VOMCBMRE9zLgo+ID4gCj4gPiBGb3Igc29tZSBQSFkgaW5zdGFuY2Vz
IGluIHBvd2VyIGdyaWQsIHlvdSBjYW4gb25seSBzZWUgb25lIFJFRkdFTiwgdGhhdAo+ID4gaW5k
aWNhdGVzIHRoZSBwaHkgZG9lc24ndCByZXF1aXJlIFFSRUYgb3IgdGhlIHBoeSBhbmQgdGhlIFFS
RUYgaXQgcmVxdWlyZXMKPiA+IHNoYXJlIHNhbWUgUkVGR0VOLgo+ID4+Cj4gPj4gUGVyaGFwcyB0
aGlzIHdvdWxkIGJlIG5lY2Vzc2FyeSBmb3IgTWFodWEgc2luY2UgaXRzIGNsb2NrcyBkb24ndAo+
ID4+IHJlcXVpcmUgUVJFRiAob3Igd2UgY2FuIGxpZSBhYm91dCBpdCBhbmQgaGFuZGxlIHRoZW0g
dGhlcmUpPwo+ID4gCj4gPiBGb3IgTWFodWEgUENJZTUgUEhZLCBpdCBkb2Vzbid0IHJlcXVpcmUg
UVJFRi4gU28gd2UgZG9uJ3QgbmVlZCB0byB2b3RlCj4gPiBSRUZHRU4gTERPcyBmb3IgUVJFRiBp
biB0Y3NyIGRyaXZlci4gQnV0IHRoZSBQSFkgcmVxdWlyZXMgUkVGR0VOLiBTbyB3ZQo+ID4gc3Rp
bGwgbmVlZCB0byB2b3RlIGluIFBIWSBkcml2ZXIuCj4gCj4gT0ssIEkgdGhpbmsgSSBnb3QgbXkg
bWVudGFsIG1vZGVsIG9mIGFsbCBvZiB0aGlzIHN0cmFpZ2h0LiBCdXQgZXhwZWN0Cj4gbWUgdG8g
bWFrZSBtb3JlIG1pc3Rha2VzIGFuZCBzb3JyeSBmb3IgdGhhdCEKCk5vIHdvcnJpZXMgYXQgYWxs
LiBHbGFkIHRoZSBSRUZHRU4gYW5kIFFSRUYgdG9wb2xvZ3kgaXMgY2xlYXIgbm93LiBUaGFua3MK
Zm9yIHRoZSByZXZpZXcuCgotIFFpYW5nIFl1CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
