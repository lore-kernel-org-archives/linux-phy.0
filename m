Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F1CC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 04:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enO0+xvEklbcKKgytB6s0giCXZrR9WrHYXQ57nQChDQ=; b=q8JXw9PcyreKuq
	wcLQdusMQ+Laxc/Epj8UnKG4fIHhjnkfuj16ipWXTIj3/d5QEV0gsZdFPx/EJMIuWxDm1lEmn8RpK
	jqgsk4ZDqgzHEiTl9D/eJh91N2QbZLEE3vfegXhR9XwQAet5o/rpfn+ZtvE4k00ItQfI6mJ78iBba
	JmPT+PhB6w0mZvk9T2Sk32rn21tC+GZa8CrtjPuvGN/bBL87mHru8zWBT0aS6Q6UBonlT78sFYi+N
	Inarl2yW/IxHk/OrzigdkJ/QFzeT7YmshUsj9/gQVMjVj9sAVmcofaAzJNOGuXMMkPTuGtCRsBtsS
	KWjisIhJYFZbKcxkQoTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wovaK-00000006oQg-1LsN;
	Wed, 29 Jul 2026 04:08:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wovaI-00000006oQF-0uWF
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 04:07:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66T3w7Do808346
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FGjCIVQno7cuhBScC143ida5jzS7EfDwNlNjCfxKits=; b=XrDq2vNpSqcxRZex
	Pe0iaq92eSnKeR9oX/t2X+O4ga/7CteF231spCbysQGzoaivJWlu8QR2AF6cfjt5
	XM0b5+TJWIUX3rPSM9H18mchNkmZuQcy/OQO39VtlqP5Xi5kepffcRwYXhGZ4Exw
	eaH//ze2wYlJs6puZidVWufZh58zRyde+sYCGlBen4sAdXectdi2O853u1pkPGcd
	nbhUadnp+m6xB57g6r/QSD7vJPtg19gy3FTbuzHPIrEfBJNy1WBfhvxQLDajBUlA
	D6ylHkEVyLquoBjhqun2OyBbLrLCVo30PqG74X7fOHxwmvfOWpCZvDojm3zq0NXJ
	gq1USA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqa33010q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:07:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cfa4e4684bso15135085ad.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 21:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785298076; x=1785902876; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FGjCIVQno7cuhBScC143ida5jzS7EfDwNlNjCfxKits=;
        b=CsNa558tRVA7boy2UygytTRJa6MkjiwrptLN2LyTQ7P9ZkgwUJiepHK+GW/gZbbr13
         Grq5rwHpWCPnuUmk7tNSTEGKZn2dWlit3ouE8Y9ZPjaU0r7UudPiOzJxNJYFKszmCE62
         oTa7ZU/QduObaiDix0lstxFjCA8mIzYrPhAcsC3hm6heAqRx3ly5s0ClMZHAlsV0WH1P
         WP8RdP1iQ4eQL9nASDAK5cSVKEyMgABwlUew3rXIvssdgBruk/RuNVnKR1HO/uiCi9bS
         MHPscAjdXhMlfSCP3mvdETNEbWD8P/D2U2PFyrZIf6MtcjcahF1qSLSvso4za4WmN6By
         y9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785298076; x=1785902876;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FGjCIVQno7cuhBScC143ida5jzS7EfDwNlNjCfxKits=;
        b=XgnDXp5B76hxONP1hBBYCoriFbO9r4dlyoONvN9bnV9WffotBV4xAwi+4beC3X/SY5
         wlqflX6148TqN3JS09FH0D0IC0krebTylM6malhzLmKDWOCd1aUFt94PWsUKby1ZqJXt
         kdz2sDIpv2DEA8xN3ELexPCvzaAsbbhjmAnlrac0ZHQsGocRFuyNr6qmb81hw7mHlDJG
         l1SbeEWavfWqJZ07zpRCFiJHr3ia82SK5HcHar2Q02N0j35tWQUVL8cGfS4CtOvM1CFU
         39Mr2nBJcs6nUHuecG3Gj9w0LWS72I+jtKLDGx0CEDYP0Wu289NLQjxPmnc3el2dloyh
         ooiw==
X-Forwarded-Encrypted: i=1; AHgh+Ro88moqX2YVN0I+kkL1NKjiaMaK0HrU4kWlPp4GFKXFMpzdjiEVUozZXBlQy5tqE5nwOV2iGqgxFzQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDdjBJEhh12jszIsPoSQnnsxKuyQ/JsSmtX5gDhpTR8+7eqNhY
	Jp74dKfDQQZBmDF6xBb1jOmbgM6dTGWlMLC/vBYBSpe3S9+DFo/NT0cs7/GImbWlFijyCER4Iu5
	tl0CPGdYIREpSJyCMENhRPMcxLjW6Sr44PO3bmmjpC+xj7mm87oOsA0I6mBRYzBeLN1/V
X-Gm-Gg: AR+sD12pyQolpbVdlcEN8h+s/ORNPSB69wwhZJS5fT0Z4vxljewf7pfLo5DMWZCGIIB
	P1dU4EBWexMZ1BxoXLojC8tB/7UfAv+1WqPhZ9e/NYYWPQKxZDO2IyF5/5V9wh2/EnDTi9/aflI
	4zTqf58XWkYzk9CyDZ5gZIekn+HtiAbbqzy5CXnAM44kRQ5c/qq8eRtoq0LBX/Zm1MvTyKR1mpZ
	w1+B0PE16KF7cjVCIfaOT7xATAR5F0SaXN1IwucCfWMw05qGQHU2+EzkPVMwIzY2rj/M/1UmDHW
	r/7yD2WNjtZMfWng2I2XrGfUFGI+yrgT8bGXNXZDqFGcgpTGZshqbpjem+g/zxeH+5UJZT34JSt
	qHSjycUut5+43lDxBogqkwQUXa2Jzo3NC/ZE=
X-Received: by 2002:a17:903:1844:b0:2ca:d91d:d3a7 with SMTP id d9443c01a7336-2d015c9cd4cmr69196635ad.10.1785298075762;
        Tue, 28 Jul 2026 21:07:55 -0700 (PDT)
X-Received: by 2002:a17:903:1844:b0:2ca:d91d:d3a7 with SMTP id d9443c01a7336-2d015c9cd4cmr69196445ad.10.1785298075384;
        Tue, 28 Jul 2026 21:07:55 -0700 (PDT)
Received: from [192.168.29.63] ([49.43.230.245])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504db2c4csm4492170eec.28.2026.07.28.21.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 21:07:54 -0700 (PDT)
Message-ID: <3eee6637-0b6e-431c-b3cc-959bba5b2646@oss.qualcomm.com>
Date: Wed, 29 Jul 2026 09:37:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] PCI: qcom: Add link retention support
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
 <20260709-link_retain-v3-3-81a9d187bb61@oss.qualcomm.com>
 <63rwvquftwg77cy6wmsw7stubpluvmp6dplg3nt5lzhdilio2e@dmdesbk63frc>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <63rwvquftwg77cy6wmsw7stubpluvmp6dplg3nt5lzhdilio2e@dmdesbk63frc>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDAzMCBTYWx0ZWRfX7erJNQ5i0hH8
 NoJcbJYG/1fRzP5EKIB3TKStxOuxDE8uNktNUKSDFOciCWa2mzi1iYUTCZZ1nQy73lNPlqGkeIM
 0s3nj7JnEn+ejOItGUV6UQpxEJon7G936Vgdub5t7fS6G48EPs+VsTKPDJiW+7iYtO1P8izy0nE
 /9F4COxMp14swUnzdD052pPtHg5PiMXqKBHWqb26iJtwuJpDIK8+a6DQe0YkMcHncO6cOWEhg9c
 YvmeZTDxaUNKwPR0w0PJ+1Y1PtJYRDxdFm3r/mkbWUMufUkD3dnaID9/v3nvfJil3MxQdeDttdq
 +kKpq5zEPclNr3DFPYmccgf0km7K7R2Ls8YNHhy3NwtoPUrDM7fgGb4xtDNXAjYzrSxbhSObw4/
 v3yDpVlyId04ZUnpFJ4qfdZtmdDolc/ozSdRWXu4DRCD7W1xfPgEGfh+Kdp30h+GMBq2DERDMX6
 K54niHINOl73xSgz2Vg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDAzMCBTYWx0ZWRfX4Q7fh6pAHw/E
 RfP2Mb1/23bX8Mhhp21bDE1xuRWJC++1kegEDtaEcPQSpiWb7inaX5xOIOKftBQdp4ydhSDtZcq
 mK880UvOgkECfDa0BDfdcYE2Wdtl6qA=
X-Proofpoint-ORIG-GUID: ws6TWVrxfsaJ8Qc_CCv20KDMhPhytt8E
X-Authority-Analysis: v=2.4 cv=Ap/eGu9P c=1 sm=1 tr=0 ts=6a697c9c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=/XdJXUgKm5apizxDBrSIVA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=G0H1kKVpKd3q3zwLEq4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: ws6TWVrxfsaJ8Qc_CCv20KDMhPhytt8E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_01,2026-07-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_210758_390106_F2F515AA 
X-CRM114-Status: GOOD (  31.90  )
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

CgpPbiA3LzEzLzIwMjYgMTA6MjAgQU0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBP
biBUaHUsIEp1bCAwOSwgMjAyNiBhdCAxMjowNToxOFBNICswNTMwLCBLcmlzaG5hIENoYWl0YW55
YSBDaHVuZHJ1IHdyb3RlOgo+PiBTb21lIHBsYXRmb3JtcyBrZWVwIHRoZSBQQ0llIGxpbmsgYWN0
aXZlIGFjcm9zcyBib290bG9hZGVyIGFuZCBrZXJuZWwKPj4gaGFuZG9mZi4gUmVpbml0aWFsaXpp
bmcgdGhlIGNvbnRyb2xsZXIgYW5kIHRvZ2dsaW5nIFBFUlNUIyBpbiBzdWNoIGNhc2VzIGlzCj4+
IHVubmVjZXNzYXJ5IHdoZW4gdGhlIGRyaXZlciBkb2VzIG5vdCBuZWVkIHRvIHJldHJhaW4gdGhl
IGxpbmsuCj4+Cj4+IEludHJvZHVjZSBsaW5rX3JldGFpbiBpbiBib3RoIHFjb21fcGNpZV9jZmcg
YW5kIHFjb21fcGNpZSB0byBpbmRpY2F0ZSB3aGVuCj4+IGxpbmsgcmV0ZW50aW9uIGlzIHN1cHBv
cnRlZC4gRHVyaW5nIGluaXRpYWxpemF0aW9uLCBjaGVjayB0aGUgTFRTU00gc3RhdGU7Cj4+IGlm
IHRoZSBsaW5rIGlzIGFscmVhZHkgaW4gTDAgb3IgTDEgaWRsZSBhbmQgTFRTU00gaXMgZW5hYmxl
ZCwgc2V0Cj4+IGxpbmtfcmV0YWluIGFuZCBza2lwIGNvbnRyb2xsZXIgcmVzZXQsIFBFUlNUIyB0
b2dnbGluZywgYW5kIG90aGVyIHBvc3QtCj4+IGluaXQgc3RlcHMuCj4+Cj4+IFRoZSBtYXgtbGlu
ay1zcGVlZCBhbmQgbnVtLWxhbmVzIHByb3BlcnRpZXMgaW4gRGV2aWNlIFRyZWUgY2FwIHRoZSBs
aW5rJ3MKPj4gbWF4aW11bSBjYXBhYmlsaXR5LiBSZXRyYWluIHRoZSBsaW5rIGlmIHRoZSBjb250
cm9sbGVyJ3MgbWF4IGxpbmsgc3BlZWQgb3IKPj4gd2lkdGggZXhjZWVkcyB0aGUgRGV2aWNlIFRy
ZWUgY2FwLCB1bmxlc3MgdGhlIGN1cnJlbnRseSBuZWdvdGlhdGVkIHNwZWVkCj4+IG9yIHdpZHRo
IGlzIGFscmVhZHkgd2l0aGluIHRoYXQgY2FwLCBpbiB3aGljaCBjYXNlIHRoZSBleGlzdGluZyBs
aW5rIGNhbgo+PiBzdGlsbCBiZSByZXRhaW5lZC4KPj4KPj4gQ29uZmlndXJlIHRoZSBEQkkgYW5k
IEFUVSBiYXNlIGFkZHJlc3NlcyBpbiB0aGUgcmV0ZW50aW9uIHBhdGgsIHNpbmNlIHRoZQo+PiBi
b290bG9hZGVyIG1heSB1c2UgZGlmZmVyZW50IGJhc2UgYWRkcmVzc2VzIHRoYW4gdGhvc2UgcHJv
dmlkZWQgYnkgdGhlCj4+IGRldmljZSB0cmVlLgo+Pgo+IFdoZXJlIGlzIHRoaXMgYmFzZSBhZGRy
ZXNzIGNoYW5nZT8KSXQgaXMgYmVpbmcgY292ZXJlZCBhcyBwYXJ0IG9mwqAgZHdfcGNpZV9zZXR1
cF9yYygpLCB0aGlzIHBhcnQgY2FuIGJlIHJlbW92ZWQKYXMgdGhpcyBiZWluZyBjYWxsZWQgdW5j
b25kaXRpb25hbGx5IGluIHRoaXMgcGF0Y2guCj4+IFNldCBsMXNzX3N1cHBvcnQgaW4gdGhlIHJl
dGVudGlvbiBwYXRoIGFzIHdlbGwsIHNpbmNlIGl0IGlzIG90aGVyd2lzZSBvbmx5Cj4+IHNldCBs
YXRlciBpbiB0aGUgbm9ybWFsIGluaXQgZmxvdyB3aGljaCBpcyBza2lwcGVkIHdoZW4gdGhlIGxp
bmsgaXMKPj4gcmV0YWluZWQuCj4+Cj4+IFRlc3RlZC1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9z
cy5xdWFsY29tbS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5k
cnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oIHwgIDEgKwo+PiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgICAgICAgfCA2OCArKysrKysrKysrKysrKysr
KysrKysrKysrKy0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWRlc2lnbndhcmUuaCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdu
d2FyZS5oCj4+IGluZGV4IGRlNGIyNDViMTc1OC4uMGM5OGI5MTRlYjUyIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+PiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+PiBAQCAtNDcxLDYg
KzQ3MSw3IEBAIHN0cnVjdCBkd19wY2llX3JwIHsKPj4gIAlib29sCQkJbmF0aXZlX2VjYW07Cj4+
ICAJYm9vbCAgICAgICAgICAgICAgICAgICAgc2tpcF9sMjNfcmVhZHk7Cj4+ICAJYm9vbAkJCXNr
aXBfcHdyY3RybF9vZmY7Cj4+ICsJYm9vbAkJCWxpbmtfcmV0YWluOwo+PiAgfTsKPj4gIAo+PiAg
c3RydWN0IGR3X3BjaWVfZXBfb3BzIHsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMKPj4gaW5kZXggOWNhNjIwZDQ3NDZhLi43N2QyZDk4OWU5ZGEgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+ICsrKyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+IEBAIC0yNjAsMTIgKzI2MCwxNCBAQCBz
dHJ1Y3QgcWNvbV9wY2llX29wcyB7Cj4+ICAgICogQG92ZXJyaWRlX25vX3Nub29wOiBPdmVycmlk
ZSBOT19TTk9PUCBhdHRyaWJ1dGUgaW4gVExQIHRvIGVuYWJsZSBjYWNoZQo+PiAgICAqIHNub29w
aW5nCj4+ICAgICogQGZpcm13YXJlX21hbmFnZWQ6IFNldCBpZiB0aGUgUm9vdCBDb21wbGV4IGlz
IGZpcm13YXJlIG1hbmFnZWQKPj4gKyAgKiBAbGlua19yZXRhaW46IFNldCBpZiBjb250cm9sbGVy
IHN1cHBvcnRzIHJldGFpbmluZyBsaW5rIGZyb20gYm9vdGxvYWRlcgo+PiAgICAqLwo+PiAgc3Ry
dWN0IHFjb21fcGNpZV9jZmcgewo+PiAgCWNvbnN0IHN0cnVjdCBxY29tX3BjaWVfb3BzICpvcHM7
Cj4+ICAJYm9vbCBvdmVycmlkZV9ub19zbm9vcDsKPj4gIAlib29sIGZpcm13YXJlX21hbmFnZWQ7
Cj4+ICAJYm9vbCBub19sMHM7Cj4+ICsJYm9vbCBsaW5rX3JldGFpbjsKPj4gIH07Cj4+ICAKPj4g
IHN0cnVjdCBxY29tX3BjaWVfcGVyc3Qgewo+PiBAQCAtOTk2LDYgKzk5OCw1MCBAQCBzdGF0aWMg
aW50IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzJfN18wKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUp
Cj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+ICAKPj4gKy8qCj4+ICsgKiBEZXRlcm1pbmUgd2hldGhl
ciB0aGUgbGluayBlc3RhYmxpc2hlZCBieSB0aGUgYm9vdGxvYWRlciBjYW4gYmUgcmV1c2VkLgo+
PiArICoKPj4gKyAqIFRoZSBtYXgtbGluay1zcGVlZCBhbmQgbnVtLWxhbmVzIHNwZWNpZmllZCBp
biBEZXZpY2UgVHJlZSBhcmUgbWVhbnQgdG8gY2FwCj4+ICsgKiB0aGUgbGluaydzIG1heGltdW0g
Y2FwYWJpbGl0eS4gUmV0cmFpbiB0aGUgbGluayBpZiB0aGUgY29udHJvbGxlcidzIG1heAo+PiAr
ICogbGluayBzcGVlZC93aWR0aCBleGNlZWRzIHRoZSBEZXZpY2UgVHJlZSBjYXAsIHVubGVzcyB0
aGUgY3VycmVudGx5Cj4+ICsgKiBuZWdvdGlhdGVkIHNwZWVkL3dpZHRoIGlzIGFscmVhZHkgd2l0
aGluIHRoYXQgY2FwLCBpbiB3aGljaCBjYXNlIHRoZQo+PiArICogZXhpc3RpbmcgbGluayBjYW4g
YmUgcmV0YWluZWQgYXMtaXMuCj4+ICsgKi8KPj4gK3N0YXRpYyBib29sIHFjb21fcGNpZV9jaGVj
a19saW5rX3JldGFpbihzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+PiArewo+PiArCXUzMiBjYXAs
IHNwZWVkLCBjdXJfc3BlZWQsIHZhbCwgbHRzc20sIHdpZHRoLCBjdXJfd2lkdGg7Cj4+ICsJc3Ry
dWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4gKwl1OCBvZmZzZXQ7Cj4+ICsKPj4gKwl2
YWwgPSByZWFkbChwY2llLT5wYXJmICsgUEFSRl9MVFNTTSk7Cj4+ICsJbHRzc20gPSB2YWwgJiAw
eDFmOwo+PiArCWlmICgodmFsICYgTFRTU01fRU4pICYmCj4+ICsJICAgIChsdHNzbSA9PSBEV19Q
Q0lFX0xUU1NNX0wwIHx8IGx0c3NtID09IERXX1BDSUVfTFRTU01fTDFfSURMRSkpIHsKPj4gKwkJ
cWNvbV9wY2llX2NvbmZpZ3VyZV9kYmlfYXR1X2Jhc2UocGNpZSk7Cj4+ICsKPj4gKwkJb2Zmc2V0
ID0gZHdfcGNpZV9maW5kX2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VYUCk7Cj4+ICsJCWNh
cCA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgb2Zmc2V0ICsgUENJX0VYUF9MTktDQVApOwo+PiAr
CQlzcGVlZCA9IEZJRUxEX0dFVChQQ0lfRVhQX0xOS0NBUF9TTFMsIGNhcCk7Cj4+ICsJCXdpZHRo
ID0gZHdfcGNpZV9saW5rX2dldF9tYXhfbGlua193aWR0aChwY2kpOwo+PiArCj4+ICsJCXZhbCA9
IGR3X3BjaWVfcmVhZHdfZGJpKHBjaSwgb2Zmc2V0ICsgUENJX0VYUF9MTktTVEEpOwo+PiArCQlj
dXJfc3BlZWQgPSBGSUVMRF9HRVQoUENJX0VYUF9MTktTVEFfQ0xTLCB2YWwpOwo+PiArCQljdXJf
d2lkdGggPSBGSUVMRF9HRVQoUENJX0VYUF9MTktTVEFfTkxXLCB2YWwpOwo+PiArCj4+ICsJCWlm
IChwY2ktPm1heF9saW5rX3NwZWVkID4gMCAmJiBzcGVlZCA+IHBjaS0+bWF4X2xpbmtfc3BlZWQg
JiYKPj4gKwkJICAgIGN1cl9zcGVlZCA+IHBjaS0+bWF4X2xpbmtfc3BlZWQpCj4+ICsJCQlyZXR1
cm4gZmFsc2U7Cj4+ICsKPj4gKwkJaWYgKHBjaS0+bnVtX2xhbmVzID4gMCAmJiB3aWR0aCA+IHBj
aS0+bnVtX2xhbmVzICYmCj4+ICsJCSAgICBjdXJfd2lkdGggPiBwY2ktPm51bV9sYW5lcykKPj4g
KwkJCXJldHVybiBmYWxzZTsKPj4gKwo+PiArCQlyZXR1cm4gdHJ1ZTsKPj4gKwl9Cj4+ICsKPj4g
KwlyZXR1cm4gZmFsc2U7Cj4+ICt9Cj4+ICsKPj4gIHN0YXRpYyBpbnQgcWNvbV9wY2llX2luaXRf
Ml83XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4gIHsKPj4gIAlzdHJ1Y3QgcWNvbV9wY2ll
X3Jlc291cmNlc18yXzdfMCAqcmVzID0gJnBjaWUtPnJlcy52Ml83XzA7Cj4+IEBAIC0xMDE0LDYg
KzEwNjAsMTUgQEAgc3RhdGljIGludCBxY29tX3BjaWVfaW5pdF8yXzdfMChzdHJ1Y3QgcWNvbV9w
Y2llICpwY2llKQo+PiAgCWlmIChyZXQgPCAwKQo+PiAgCQlnb3RvIGVycl9kaXNhYmxlX3JlZ3Vs
YXRvcnM7Cj4+ICAKPj4gKwlpZiAocGNpZS0+Y2ZnLT5saW5rX3JldGFpbikgewo+PiArCQlwY2kt
PnBwLmxpbmtfcmV0YWluID0gcWNvbV9wY2llX2NoZWNrX2xpbmtfcmV0YWluKHBjaWUpOwo+PiAr
CQlwY2ktPmwxc3Nfc3VwcG9ydCA9IHRydWU7Cj4+ICsJCWlmIChwY2ktPnBwLmxpbmtfcmV0YWlu
KSB7Cj4+ICsJCQlkZXZfaW5mbyhkZXYsICJSZXRhaW5pbmcgUENJZSBsaW5rXG4iKTsKPj4gKwkJ
CXJldHVybiAwOwo+PiArCQl9Cj4+ICsJfQo+PiArCj4+ICAJcmV0ID0gcmVzZXRfY29udHJvbF9h
c3NlcnQocmVzLT5yc3QpOwo+PiAgCWlmIChyZXQpIHsKPj4gIAkJZGV2X2VycihkZXYsICJyZXNl
dCBhc3NlcnQgZmFpbGVkICglZClcbiIsIHJldCk7Cj4+IEBAIC0xMDc0LDYgKzExMjksOSBAQCBz
dGF0aWMgaW50IHFjb21fcGNpZV9wb3N0X2luaXRfMl83XzAoc3RydWN0IHFjb21fcGNpZSAqcGNp
ZSkKPj4gIHsKPj4gIAljb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyAqcGNpZV9jZmcgPSBwY2ll
LT5jZmc7Cj4+ICAKPj4gKwlpZiAocGNpZS0+cGNpLT5wcC5saW5rX3JldGFpbikKPj4gKwkJcmV0
dXJuIDA7Cj4+ICsKPj4gIAlpZiAocGNpZV9jZmctPm92ZXJyaWRlX25vX3Nub29wKQo+PiAgCQl3
cml0ZWwoV1JfTk9fU05PT1BfT1ZFUlJJREVfRU4gfCBSRF9OT19TTk9PUF9PVkVSUklERV9FTiwK
Pj4gIAkJCQlwY2llLT5wYXJmICsgUEFSRl9OT19TTk9PUF9PVkVSUklERSk7Cj4+IEBAIC0xMzY0
LDEyICsxNDIyLDEzIEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdf
cGNpZV9ycCAqcHApCj4+ICAJc3RydWN0IHFjb21fcGNpZSAqcGNpZSA9IHRvX3Fjb21fcGNpZShw
Y2kpOwo+PiAgCWludCByZXQ7Cj4+ICAKPj4gLQlxY29tX3BjaWVfcGVyc3RfYXNzZXJ0KHBjaWUp
Owo+PiAtCj4gVGhpcyBpcyBwcm9ibGVtYXRpYy4gTW9zdCBvZiB0aGUgaW5pdCBjYWxsYmFja3Mg
ZG8gb3BlcmF0aW9ucyBsaWtlIHJlc2V0IHRoZQo+IFBIWSwgZW5hYmxlIGNsb2Nrcy4uLiBJZiB0
aG9zZSBvcGVyYXRpb25zIGFmZmVjdCB0aGUgbGluayBzdGF0ZSBhbmQgdGhlIGRldmljZQo+IGlz
IG5vdCByZXNldCB1c2luZyBQRVJTVCMsIGl0IHdpbGwgY2F1c2UgdGhlIGRldmljZSB0byBjcmFz
aC4KUEVSU1QjIGlzIG9ubHkgZm9yIGVuZHBvaW50LCBub3QgZm9yIGludGVybmFsIGNvbnRyb2xs
ZXIgc28gaXQgd2lsbCBub3QgY2F1c2UKYW55IGNyYXNoLgpNb3JlIG92ZXIgdGhlIHBlcnN0IGRl
ZmF1bHQgc3RhdGUgY2FuIGJlIHNldCBiZSBhc3NlcnQgdGhyb3VnaCBwaW5jbnRybCBpZiB5b3UK
c3RpbGwKc3VzcGVjdCB0aGlzIGNhbiBjYXVzZSBzb21lIGlzc3VlIG9uIHRoZSBwY2llIGNvbnRy
b2xsZXIgc2lkZS4KCi0gS3Jpc2huYSBDaGFpdGFueWEuCj4gLSBNYW5pCj4KCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
