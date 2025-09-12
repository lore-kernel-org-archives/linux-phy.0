Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65817CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 08:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcKHZjB11zOCxbHQLUsGp088tI0WVPlHnqUa1qrtAC0=; b=ySXw1Gjioflbq9
	GQEvGjXf1St4KzrGMlmbF7JYW9mMtzN2p0k/kSaFgflLeu6CKvWPXreuYXBTEdiRBeFZPwX9PsRuF
	G6Du0Dr9MiJBArsmVzTUBvrDQ09g9KO5Ib/1fZd+vPbfkBRW8Np0Akovnp6bucmYcmPN1c/M9xcQc
	l85vrg4cI2rdFQaaHlRnZmZtCc8Sxm0AOgwNxjWC8BWPcNrZLcIjTd1ygq3CeQ6BQVzwl49du4i/e
	GFs8hkbKrRVC4+vjlyjjyAqNlwqyC0SVFin3wOkgKJ8eCGhyFtOmZ8ta0eVvyrC9Y1dQCTqLHepuU
	4/KONNd18znv+ouwctjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzQO-000000080Uk-0EIB;
	Fri, 12 Sep 2025 08:46:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwzQK-000000080TM-2na3
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 08:46:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C8Dorq031134
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 08:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lGDrGSwQe5Wxsvo3kpmlzGmuY1iFtGQeQKswsFIUacE=; b=EGkDy38rYrnjaKFW
	5EWhmMA0KGDcOE5BcF6+mohdOrto8vCfS0ZsLlPcGzGjvyjjFExh3s665KxQ5Kfv
	7keM2U5DyWmGO1hfmLY1tpbCn6jkw3YjiF2pqc9eU59reSEAN7Uo/HSC2GFlcnyH
	ugju1T8lvtHcRBLmNTwEyMyjC2hmNjRPrLSU+4d5xHWxJjYdcqzLCvh5iMrERuge
	puJUZB/mpPQjhXCRVLZjTPTIutQ1hyuq8p9agGlSZ0chJt8WkGakoQVd+LWjpTbF
	bK+D054z+d2HDhLcNEDFqx8SS/xGdHJ2M/zKo8HtG5IytIX/zIxvxaNHf7/JPO5t
	WejYQw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqgan1n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 08:46:28 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b780683398so481601cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 01:46:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757666787; x=1758271587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lGDrGSwQe5Wxsvo3kpmlzGmuY1iFtGQeQKswsFIUacE=;
        b=oRcttpOCM1FV/Hd6HEJziEpNOqc9QHe1dnUIlWxgMktu4Pf6HM/YpF7KJIlI/+ukSZ
         djvMVlrbxOYtSYR5peKwY9uYNNMF+Vfe9ATKEoCMUWXh4e6hl9SaoPLiExRmfyV53hVm
         23IDDWFKxDuOYtg0U4QTenJYtPgDSUXlIHBJ0FHDmHgfNHCMo1UKzyC5ZFUAIwXyeej+
         svueHsc+P1e/ZJiitKxw5Y+IB+eMngnqypZtHXMkLCIKlRRDO7V8WiR+4BUJ8pG34Jdp
         0K1MApFvaIn2nY23lHt4w5eYqPZ/FAFhphI+sbbOZief1JVgQl/T/ZVMKJxdWFnCLJFI
         wUHg==
X-Forwarded-Encrypted: i=1; AJvYcCUN44Hb5pt/CfpTtpxej7VXImXEHui7Z1/WTZUcyhttVxCsjfUU9MQTfrqwuWy0/lD6wkH6EtDsWjw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmcRYoLLO3T4tbflRo9UYiQNLxo24a/Q4tiSPTAwbncIMcykKa
	R6mxMN+S20wWx7D2WzUzOGnk5JUqsiFwJaq2CcpNWNEjuDIY8s8K+SjWFqWqVZMu5qN5A8BuRXM
	SDlaDYA2J6IleDtaypJ+slxGo77IPxDyAdJcmpsPwlsc5sbN2zwXEdEABxSC9REvPeFWi
X-Gm-Gg: ASbGncuf1CNOK8Bs1BkFblwTRtYhSgmkJV8Ux4BewMZQuY8sJLkOHqVJpVD4OKWZGAs
	lQyV6RQ7jL9NxQIBVkz+JjBRKs0Ah9CdjUJYKTlJQdpxqSQKyPpwwxkLWKYzIkrB8EPx0pML7dc
	sltVL8vpUuWaPXCav+gpr0YfX7worXPotBmfUTBe9kZS1zieM8kXT7B8PJ6t8SZTC1Sj1JAHgCz
	uivfN6KeaSSCAsT6d1OckW42n7hqzk3nBizYrEGRSW8aJCoBqUy26Zjs+fQGruylIssSXUS/imJ
	9lDc13SXJeuNrVxnzG+rV7THfTW3w3H9iotOVkf1HzeOy4a3UY/BvccId60nAAnw+AkzYYHCZih
	Orndo+Zvn/6AD51wVhdlbUw==
X-Received: by 2002:a05:622a:5ca:b0:4b5:d60c:3f33 with SMTP id d75a77b69052e-4b77d13a75cmr17660191cf.13.1757666786819;
        Fri, 12 Sep 2025 01:46:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+NVmc9TA9PDMivtFQF3GWnTURuIOA8rik1NCbnbvalHLcjpoipS/fO2pMicU4DnVEo5yPGA==
X-Received: by 2002:a05:622a:5ca:b0:4b5:d60c:3f33 with SMTP id d75a77b69052e-4b77d13a75cmr17659811cf.13.1757666786285;
        Fri, 12 Sep 2025 01:46:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07c337e785sm150379466b.25.2025.09.12.01.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 01:46:25 -0700 (PDT)
Message-ID: <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 10:46:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
 <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
 <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7XqxxXMj2XrPA2QR0iCJPGFMk8S3Ooi2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX6vBnlgzAX6qR
 7L5y4RbgPKUkiXNt3CfNuCsapz+ZRCfiwc13OKJR3xpzw2S4CjZNQf1M5joQHHjwohrTuxawqaZ
 32KirIsWiHMyGy07WohKtDBfQPiIbVxzJ0N4y0nuQ59Q4mob4LK/sI4OpXz8x9kXTLhT7/ZWnDR
 yju8KEQQdxCqXYKV2+HWp5yCpAJptIxOh6w53/VCBHPxACOxFXQc2n6LnJJ0JiglVWDgRDfMKv5
 Qaj7IToqygFG2lJcCW9qJ8lN8/LLesQw3ump03XI1TTU6DJf9bdAdE0MH1yinuYkenUSDcEnQ/K
 KBlNhtEL4x7xCM0EyRhFSDUaEeLD8pQ1hcrjAoorr4dZT0cxRo0wSF6Obasfia3yhe2kUZ3WPZU
 o7v7CCGY
X-Proofpoint-GUID: 7XqxxXMj2XrPA2QR0iCJPGFMk8S3Ooi2
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3dde4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Y7PaXT35z5vDV90y7_UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_014628_707999_31A2B804 
X-CRM114-Status: GOOD (  18.73  )
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

T24gOS8xMi8yNSA0OjE1IEFNLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiAKPiBPbiA5LzEyLzIwMjUg
OToyNCBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gVGh1LCBTZXAgMTEsIDIwMjUg
YXQgMTA6NTU6MDFQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+PiBJbnRyb2R1Y2UgUUNT
NjE1IGhhcmR3YXJlLXNwZWNpZmljIGNvbmZpZ3VyYXRpb24gZm9yIERQIFBIWSBtb2RlLAo+Pj4g
aW5jbHVkaW5nIHJlZ2lzdGVyIG9mZnNldHMsIGluaXRpYWxpemF0aW9uIHRhYmxlcywgdm9sdGFn
ZSBzd2luZwo+Pj4gYW5kIHByZS1lbXBoYXNpcyBzZXR0aW5ncy4KPj4+Cj4+PiBBZGQgcWNzNjE1
LXFtcC11c2IzLWRwLXBoeSBjb21wYXRpYmxlIHN0cmluZyB0byBhc3NvY2lhdGUgUUNTNjE1Cj4+
PiBwbGF0Zm9ybSB3aXRoIGl0cyBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgY29uZmlndXJhdGlvbi4K
Pj4gVGhpcyBzaG91bGQgYmUgdGhlIGxhc3QgcGF0Y2ggaW4gdGhlIHNlcmllczogb25jZSB5b3Ug
YWRkIHRoZSBjb21wYXRpYmxlCj4+IHN0cmluZywgaXQgaXMgZXhwZWN0ZWQgdGhhdCBpdCB3b3Jr
cy4KPj4KPj4gVGhlIHBhdGNoIExHVE0uCj4gCj4gCj4gSW4gdjNbMTIvMTRdLCB0aGUgY29tcGF0
aWJsZSBzdHJpbmcgd2FzIHBsYWNlZCBpbiB0aGUgbGFzdCwgYW5kIHlvdSByZW1pbmQgbWUKPiB3
aWxsIHRyaWdnZXIgdW51c2VkIHdhcm5pbmdzIGZvciB0aGUgZWFybGllci1kZWZpbmVkIHFjczYx
NV91c2IzZHBfcGh5X2NmZy4KPiBTbyBJIG1lcmdlZCB0aGVtIGluIHY0LsKgCgpUaGUgaW50ZW50
aW9uIGlzIHRoYXQgeW91IGNhbiBkbyBhbGwgdGhlIHByZXBhcmluZyBmaXJzdCAod2hpY2ggZG9l
c24ndCBuZWVkCnRvIGluY2x1ZGUgYW4gYXNzaWdubWVudCB0byBlLmcuIERQIHRhYmxlcywgc2lu
Y2UgdGhlIGNvZGUgb3BlcmF0ZXMgb24gYQpwb2ludGVyIGlmIGl0J3Mgbm9uLW51bGwpLCBhbmQg
eW91IGNhbiBwdXNoIGFsbCB0aGUgcGxhdGZvcm0gYWRkaXRpb25zIGF0IHRoZQplbmQgKGJvdGgg
dGFibGVzIGFuZCBjb21wYXRpYmxlIGluIG9uZSBwYXRjaCkKCktvbnJhZAo+IAo+IElmIG1vdmUg
dGhpcyBwYXRjaCB0byB0aGUgZW5kLCBwYXRjaCB2NFswNy8xM10gd2lsbCBoaXQgdW51c2VkIHdh
cm5pbmdzIGR1ZSB0bwo+IG1pc3NpbmcgcmVmZXJlbmNlcy4gU2hvdWxkIEkgc3F1YXNoIHBhdGNo
ZXMgMDQgJiAwNyBhbmQgbW92ZSB0aGVtIHRvIHRoZSBlbmQ/Cj4gSSdtIGNvbmNlcm5lZCB0aGUg
cmVzdWx0aW5nIHBhdGNoIG1pZ2h0IGJlIHRvbyBsYXJnZS4KPiAKPiAKPj4+IFNpZ25lZC1vZmYt
Ynk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0tCj4+
PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyB8IDE0MSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE0MSBpbnNlcnRp
b25zKCspCj4+Pgo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
