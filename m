Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D679DCD5BDE
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 06:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDcXhp0fvw0jE8Wuwg6/YyM7ZHdQ4uknfCvE18bYdv4=; b=fZAc+js6EnTePD
	H7xxVdMaHyAKnDOYTuQegBgp6oGj6CkeBzQkytzAvsxUVpHerJqishiSswXS+UbmtwO/O2ExV2v2D
	izBooDyCtsAhYaOBu6SxA+m8WXUE9gEu49mNvXbOj8QeRYS6o63LS7BReqa5eOD2FBCSbX8itBE4p
	e92QM4KpWIYFHLcISV4Ci/JQidtNq/tPCNsrpUR9IlbGeTt9mnKbThsUBaUQwGiTSEmonW8S1ezOa
	xN8s5dANMSIzdsS0cXZeYbXAnDx3HjzaZEAGXWjhhlBrMb4TlDot8DVIzNVKs/sExQSqPadfdlLfM
	1fPPXGgNQKhqRhH7RTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS7jX-00000003OsP-1zKG;
	Wed, 27 May 2026 06:27:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS7jV-00000003Oro-26Um
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 06:27:14 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R2Whe1018706
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 06:27:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6dU205cHGcCVdQJGGLYo2nsq0Ll/crMV3YgonLyTuLc=; b=pT7WAYQ0k+Ya74gS
	wFgwiF7hDNQUI4g2K0FWNMQkPKDfwZJsQdibBtZNS7NO81jYBBbwaj8pp3c/9YuX
	P/jBZaUjzUOIh6DM48jygjINQJtHWRPz6WRHs1DAGEh4F0gwqZWeFyW8loBZZDi/
	w4egqnTG41fDndrD1wMwQuX7GYcJUNwf8Aoiv8e+TN15HZN4OHTRTrNquhfg1s5K
	zOcGXdmN8CFqdMA5BDKrd4+svzCm1VW4DnNHME9/5oDOkfRx0YmaF53myoLoZgAC
	4cxYAsB7PZyC3f+6YGIoLEXsJHk1ADDJveyR32sLEGt7eBIkGkbQ4NoK3fLF+lim
	H4GPPw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eddqku13j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 06:27:11 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ba6ebe52ebso34111115ad.0
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 23:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779863230; x=1780468030; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6dU205cHGcCVdQJGGLYo2nsq0Ll/crMV3YgonLyTuLc=;
        b=TscsUm/sC+XUjxPfJVJS1xQSTPfI1h1zySF6hcPuxO6/nQF/LdcPd9TzkjcVq/yJuT
         B2QnTsIiGoES3SU8mHtJOmBrq2lMEMRQrEY2SHglkf0Vok3hoNxwZUkroDFz1aFfcJzO
         +NQ8xsPVWepmOflh3Q0mQ6R4c8S1ah8V+9U5DlBhOB/KJG4OsZDOcL6WJHvuapAC2pFr
         uuP9kPPzLRZB53/mK4KkWyYmIG8cCB5sEhMQ+SB4jJk/i6Nf5So8M8czmdVII7b5PC0V
         zrr2E71MzRAc16PP2f/wPvaZH8cA36ThqZaP3iPzNpSn6yeeRWALLOWsRcGoY3tU9QTK
         9Rcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779863230; x=1780468030;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6dU205cHGcCVdQJGGLYo2nsq0Ll/crMV3YgonLyTuLc=;
        b=Q37aaRpOVp8Brvye7GhsMBCLPZdn+NsdHebCMgdJ+bb814EsfNoA7bAdHi+4OZKnZH
         QsvypgcclSwZ6DBCkHpeFpOTkNZbTVxzB/ZnwGSw7afgzfjD0c7oi8G1GWwatuDafSAK
         1M6UH3rJFgY7xqEKf+vPQpMqrG4eF41l5hcNU4+8t+LDgI0onDAUMjSXFD3OPwRMBu3y
         VAMwX4t0M1F9aQQ57kdghEsboi+QuYPyzAIOyqGZjlXUnWy267pEZrWUcTrpa9mS9o7N
         a/5dBccBAZnWn3fw8mDfypmXPggSNvzHIzvbWKTpK+pdF29IIxqxXnHrkNK4k5cnRMi+
         wksA==
X-Forwarded-Encrypted: i=1; AFNElJ8J7DTgDYSrEhEQ18oWbj/vO/Kw/TTuafpwghBrXWgpx5yT7dZlNEyNHB5frGhVkyz/WjEEL2+ybBY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMn01AqLcy8u8vwy6IdymC8iJsmmvb8NEIwlRjf5GBAHq+jUHQ
	/9FFhG8+8AvNmpOnYHGy9zykxpYgsm+f09zsGvyVuYI8VOZmkNtoPCaVKkjZXktiJejy16DW2ge
	GJUXLWlCSPLE/QjEvotXigNrdgg8XgNcA6vbBQJ3qDYAq1Of2yID8FmPuIwO7UdCo7SgR
X-Gm-Gg: Acq92OFCCkOMAa3l5dgv8+RH3pQVazER2J+n1z2shY7dKX6CuLtzhYx7CCDJN7TBesG
	ZyM5HtcaGB759SXd2L2sV3zUE4bm9J98T0FeQdmJudO5pziNTPI/Eqmu4E/4ZANReq7RN7NAiNG
	RS/Ocngswxf+D6v0GBk1NGE6kZ1Xqy3mRvtFxgAsIk4y930XxD4Fw60kUjytKL8fKAswjGdvxut
	KjIJah9XyBjd8jjzyt0eNQnqSO090Ap4PyVvinUAC7vIjEUkMEl5lyK4oulC4i3kyD05GLYiGLv
	EBI6IZiWlkOISMxwu6QzPXsNjh3kJi3q90tDVvpmJCIwIo28K2GOBsIYOO04WmNG33DV9GYSrJX
	GIjKl8jpPwI4d1H4Mjd9BDD6fcjiHEeuXsGVFCLIzD+KLyvfI2K0mpwscHJYq2+B944buGBw4TF
	upi17gCKMb7Xq83d5d
X-Received: by 2002:a17:903:3850:b0:2ba:7374:76e7 with SMTP id d9443c01a7336-2beb03312ffmr122769795ad.0.1779863230629;
        Tue, 26 May 2026 23:27:10 -0700 (PDT)
X-Received: by 2002:a17:903:3850:b0:2ba:7374:76e7 with SMTP id d9443c01a7336-2beb03312ffmr122769675ad.0.1779863230247;
        Tue, 26 May 2026 23:27:10 -0700 (PDT)
Received: from [10.133.33.246] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58dba7bsm138308185ad.66.2026.05.26.23.27.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2026 23:27:09 -0700 (PDT)
Message-ID: <d2098b36-c514-44e8-99b9-2213c4d52752@oss.qualcomm.com>
Date: Wed, 27 May 2026 14:27:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-usbc: Add support for "phy" reset
 used on Shikra
To: Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
 <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Zubd7d7G c=1 sm=1 tr=0 ts=6a168ebf cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=BIqxoA4OLNVSwOVwhU0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDA2MCBTYWx0ZWRfX1XLZez/UOfoz
 zE4bVtgpGqWI7/gxJfp30YPZ0EA8+AFpjhBUvadYPife78a5UtDeo1keeCVZ1xkkLnJ1HEIea8a
 bmxutTEJHW8VjSXkkd2sWYyZ51X2P9yTAGh5SJ9fEYsSStoOAjJg1OHKqlaFQ17qR2rTW8BiFvF
 Mozfjpy++I1GtNc7Mlsit4ttt2XT/PAPohA7Gzd9rlOVVUFRS4mwW3NkT6qnzJP02hReRGNFPX6
 H13sisZqzsygE2AFiULFAwt7THk+PpvAxTlIS2ivCmazOlYlbS5dD2DkftbL+ap/i/kEAah59Iu
 MSbs95FuDz47idAVUhORXm0LCGUqziwls7zeVNTlzL0t4snabllbdbB+V81pb8vUkHiCkWZuR3i
 drmWjbxDAYltsXhGJ/z6kLpGYPMvhN92/jcYLNVHCbQlturWr4Hw+k22NoDv73QxwI/JAM/4WC0
 8gEj/AaL5UmCO30XzzQ==
X-Proofpoint-ORIG-GUID: lF0oKewVW4JRV-3WEJdSL0bMDrR7vvTB
X-Proofpoint-GUID: lF0oKewVW4JRV-3WEJdSL0bMDrR7vvTB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_05,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1011 suspectscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605270060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_232713_735513_754E0119 
X-CRM114-Status: GOOD (  18.62  )
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

Ck9uIDUvMjcvMjAyNiAyOjQ0IEFNLCBQcmF0aGFtIFByYXRhcCB3cm90ZToKPiBGcm9tOiBLcmlz
aG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+Cj4KPiBTaGlr
cmEgdXNlcyB0aHJlZSByZXNldHMgKGRwLyBwaHkvIHBoeV9waHkpLiBBZGQgdGhlIGV4dHJhICJw
aHkiIHJlc2V0Cj4gbmVlZGVkIGZvciBvcGVyYXRpb24gb2YgUU1QIFBoeSBvbiBTaGlrcmEuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5x
dWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUHJhdGhhbSBQcmF0YXAgPHByYXRoYW0ucHJh
dGFwQG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC11c2JjLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC11c2JjLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5j
Cj4gaW5kZXggYzM0MjQ3OWEzNzk4Li4wNjdlN2Y2ZTU2NDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMKPiBAQCAtNTEzLDcgKzUxMyw3IEBAIHN0YXRpYyBj
b25zdCBjaGFyICogY29uc3QgdXNiM3BoeV9yZXNldF9sW10gPSB7Cj4gIH07Cj4gIAo+ICBzdGF0
aWMgY29uc3QgY2hhciAqIGNvbnN0IHVzYjNkcHBoeV9yZXNldF9sW10gPSB7Cj4gLQkicGh5X3Bo
eSIsICJkcF9waHkiLAo+ICsJInBoeV9waHkiLCAiZHBfcGh5IiwgInBoeSIsCj4gIH07Cj4gIAoK
CnVzYjNkcHBoeV9yZXNldF9sIGlzIHNoYXJlZCB3aXRoIHFjczYxNV91c2IzZHBfcGh5X2NmZywg
YnV0IEkgZGlkbid0IGZpbmQgYW55IG9wdGlvbmFsLXJlc2V0IGhhbmRsaW5nIGluIHFtcF91c2Jj
X3Jlc2V0X2luaXQoKS4KdGFsb3MuZHRzaSBvbmx5IGRlZmluZXMgdHdvIHJlc2V0cyBmb3IgcWNv
bSxxY3M2MTUtcW1wLXVzYjMtZHAtcGh5LCBzbyBhZGRpbmcgInBoeSIgaGVyZSB1bmNvbmRpdGlv
bmFsbHkgd2lsbCBicmVhayBwcm9iZSBvbiBRQ1M2MTUuwqAKUGxlYXNlIGNyZWF0ZSBhIHNlcGFy
YXRlIHJlc2V0IGxpc3QgZm9yIFNoaWtyYSBpbnN0ZWFkLgoKCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBxbXBfcGh5X21zbTg5OThfdnJlZ19sW10gPSB7CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
