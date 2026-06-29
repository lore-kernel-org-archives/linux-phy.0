Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9832C43602
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhRbiMFNr1Cidhr3JUjOKGsDTpARZw4Wns285NslMA0=; b=gGQF0X/mevKbzO
	zMFZnwrvDOOeefACj6eU4RVy846V3PLm2ZEq7XyCe/eRK1azUGqhxuYYvjeOTMr6b4iNAfYJ6BoGm
	a7KXECLbe1Nk87Se80pIybKlncwUCESi9Y+lLCd8RGrlJZjSpmevolary+xiQNG+yc+27Ew6CDRuS
	ABEKdA0T1IkQSS9c1x/0WbnOYUvaCTVp2N/3JYgP+a6jzFEqCJxzejLl9qgXapZWP6h5pSGVjk1qZ
	KucHFWID7i4QYdFyNRFIBaWT2y73+/Niz8LnEuyiLu/VrpdOYsWi6d8Y/egyjF+IJwXkVW3GLFxa+
	h/LHaD+12VOD7wZSK4/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8BY-0000000E9Ju-1wiM;
	Mon, 29 Jun 2026 09:21:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8BW-0000000E9JY-0IWc
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:21:47 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T8OBQM2348369
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:21:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NLDCIDvWiMtamq06GaZ8B9EiMhANn7gwMnT2WeVy/c0=; b=gILl2WvUe8GeJrsC
	6MbaDGsDZo7RyhRKQ18LjtvKhGl+0pocnpbs2QpXcs1rq0ndE99Vl3q6U9VB23/2
	9k/gnSjLUfQV56jKVjgaRfoxsBI7bb5xU/npa8h64nlVbOKKG/1GUac8MwWfRQvk
	zPZmvblblXeVxDzg4hXOrrRByR0B0Dc/pkMhwgSzvAsEOSSLadlx7LdzovYurWSk
	HiwXpOYpD2+2NgUKJSp1SayzhAHC79qpIQ0gyk9gS4DI8wHovRwMUkVLJWMmsarN
	d9o/+o1WE8LDTSSAZySbJIJIw+5+VraEf9kfV1al97eojCmTY6BdngId4AjkcIin
	g8GmKQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3n5s08rm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 09:21:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51a8ee253caso1381301cf.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 02:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782724904; x=1783329704; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NLDCIDvWiMtamq06GaZ8B9EiMhANn7gwMnT2WeVy/c0=;
        b=ByVWRNbft37KIOw22T6kK7Bevptvb+hvXZkanvIsVLtoSrDy5L6i17geERNSPnrvMX
         PpGYRPYWiQUR1unz19Ai7zSTsf5OE68c90De4Gw3+8AZXraLFox49Hj5X2Xb8yqhx6TR
         f0FwYGT1LQWpFiDW6+JzZVwOp6ZrKOJ4HXzVRzfdhOgh09R+XvmxyNtxx/b1KF19kIHW
         jQjdWU6smGP34UPkMFbfQyCCNAKI5+3UZHly5M2UcQ2ZqL6A7Br/CFdEht+b+SZnJql4
         j8TcNmcrWPUq9We/vBUgrkRT/uafyP0I6WTE4i/8ZSgsGjOufISH7qXb4yEStGqVddc4
         iZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782724904; x=1783329704;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NLDCIDvWiMtamq06GaZ8B9EiMhANn7gwMnT2WeVy/c0=;
        b=DditktOy/WCQa3a4gkcZN/JBt+dIpizei5dS6G7evtbnX70HP/t4OHhdINN4zasfRg
         iGtLyfQfNYoC4i94i1JD3J2Ywj+bU9M2QAEQWoZd0cyLvKgmGYxmaFLLL9XhqPNndLqo
         xe0gS8LxRrPgeWUlbljzkdz+LTH7V/ABbIv6t60q31p53i7pzg+AjFmr3vA9eja94NTe
         TZgW7Z0uq8Dm1Mftu5lAcgcIq8LM1FX8xt6/MeMnE7S/m/Oq0dUatc4W38lCCKkB2xKz
         I02KKERz97d7AyMG++hKc159XnV9MuOu/DuyBOK9omyNLVPUOKFKiEKh9ZWO8ALkzNRv
         1VfQ==
X-Forwarded-Encrypted: i=1; AFNElJ8htLRaCRM2BWqbv/SZ4il4ienplS6h4xkhipdpMjq6vBUlyPjij36hCIUJIQspydXvCu0FGkSrDVI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/+JcYXPQV3FQTr/YogDwEmhX7JsV+aE6sUusJtXWzslWpEzj2
	gx2CJUP4dENsGfP98PMA30xp9x8LBHz+bpIIF5Nj+oG+6tNoqiaZquVXdsEm6biWipgTRrwhlIs
	bQz/3Lw1/O8NiFnTW8rbaGmcEqVu3CDlehqO6z5O18RhnUw53NmNRhuEkfGqAXVlSxb74
X-Gm-Gg: AfdE7clapfbGeZDiTDKm8sXZTRSGRG77z3ZaR87zOtCVC+riVfnMkDne2n/NrAfdVdy
	3PvAIh0Cva/Nn3jRAk7FWdFKeMPbDfFv4XX/B2sK6NlE3JVRxBVl+LwHcQBSSxMtwil16dGjJXr
	hx9Vi044U8NXw+s7B+/oTs99KF2O6ExNTZUG7gHLOZMOjesVuPprtInFldINs791V3tyqYXIMv+
	1wi05dHZw1yZwDfR6jLiM1brjPEZiqEZSIwVlyMI/K3zF9BoQkJPv5s1IXfj+V+wR0ms2RX588V
	/Ter8+eVRhk8qgReWh4lQOAHvvQlNdTTTrvd2rTkNYEMUomTTMOGjBdsBzMtNBqR2MT+RyAhlZ2
	kcqnGzzajRJToik223eJ8BvrJfZRqAPnDl2U=
X-Received: by 2002:a05:622a:1813:b0:50e:6311:7380 with SMTP id d75a77b69052e-51a72831d5cmr155230981cf.6.1782724904307;
        Mon, 29 Jun 2026 02:21:44 -0700 (PDT)
X-Received: by 2002:a05:622a:1813:b0:50e:6311:7380 with SMTP id d75a77b69052e-51a72831d5cmr155230661cf.6.1782724903818;
        Mon, 29 Jun 2026 02:21:43 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c127b7619afsm29219266b.4.2026.06.29.02.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 02:21:43 -0700 (PDT)
Message-ID: <8fbbe66a-839e-4099-991c-f5b2868f03bf@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 11:21:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
 <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
 <ahk57lEoWQtkGsJt@hu-qianyu-lv.qualcomm.com>
 <1bbccb16-b91e-4116-a4cd-213a46978fa1@oss.qualcomm.com>
 <akII/X8OWO5XN9Gw@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <akII/X8OWO5XN9Gw@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfX7/fTrLQi2UEg
 2QPKqGXJnwXSZJF8RzM43Gd78cSQzwSMd12lPs72vdrrj5COV3Y+nxYpdAxq8vKbYizbFreDbio
 yL53BAHHVXmHbXuJYMZX80yvi+hylvk=
X-Proofpoint-ORIG-GUID: KDYGRwe8YK2YUCJ7nxCjjYOuPE3BcSBg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA3NCBTYWx0ZWRfXx3ogqgN8WCnp
 N0GB5GpVk3w5Ac+IPnZakczPatHGJie/gDPPJiS3AZgZVYaw0M80okjzmizkpDyAiRCYcp26CHp
 5dkSzk8mTPaVvEvzJb37JU9Ix7JPLamlQpR/j83elQEDZMEWgEpMCA2dQIsx15ipHM4ddwCL4RM
 s/WslvauyMQmKsA1/rsBfco2ov+etdechDqkkogGBbGeoHruXKQoMlCfatVtlSR7PLdy1HnnOt+
 kj8OpGYX279g81Gz8KWrrUFad95h6AHvR+KgvfCQi9jA34s9Ts+lNZiEM8MJtypA0ifVqDzRjku
 DRDFurYc4bEOT9dlG6FhXJvOFQ0T7dTk0yokkvlCPRfm6e4FhzlGUusTki+TMVYm2O/ZxncPo+b
 ET517AulF14fMGnqSRtcJ1d/CT7GG1qAVXgoci1eeLjhMpuFL11K4zDWdkJLU4KYjHSeS2jRrkv
 Ah4AW2ZLDOcP82JwU9w==
X-Authority-Analysis: v=2.4 cv=NZzWEWD4 c=1 sm=1 tr=0 ts=6a423929 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=OXfuQhhJyhkMGnq2POkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: KDYGRwe8YK2YUCJ7nxCjjYOuPE3BcSBg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 adultscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_022146_113896_55C920FE 
X-CRM114-Status: GOOD (  19.84  )
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

T24gNi8yOS8yNiA3OjU2IEFNLCBRaWFuZyBZdSB3cm90ZToKPiBPbiBUdWUsIEp1biAxNiwgMjAy
NiBhdCAwNDowNTo0M1BNICswMjAwLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiA1LzI5LzI2
IDk6MDIgQU0sIFFpYW5nIFl1IHdyb3RlOgo+Pj4gT24gVGh1LCBNYXkgMjgsIDIwMjYgYXQgMDQ6
NDg6MjRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+PiBPbiBGcmksIE1heSAy
MiwgMjAyNiBhdCAwNDoyNzozNVBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4+Pj4+IE9uIFdlZCwgTWF5IDIwLCAyMDI2IGF0IDA3OjI1OjAxUE0gKzAzMDAsIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+PiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxMDo0NzoxNlBN
IC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPj4+Pj4+PiBTb21lIFFNUCBQQ0llIFBIWSBoYXJkd2Fy
ZSBibG9ja3MgY2FuIGJlIHNwbGl0IGludG8gbXVsdGlwbGUgc3ViLVBIWXMKPj4+Pj4+PiB1bmRl
ciBhIHNpbmdsZSBEVCBub2RlLCBlYWNoIHJlcXVpcmluZyBpdHMgb3duIHBpcGUgY2xvY2sgcmVn
aXN0cmF0aW9uIGFuZAo+Pj4+Pj4+IERUIHJlc291cmNlIG1hcHBpbmcuIFRoZSBjdXJyZW50IGhl
bHBlcnMgYXJlIHRpZ2h0bHkgY291cGxlZCB0byBhIHNpbmdsZQo+Pj4+Pj4+IHFtcF9wY2llIGlu
c3RhbmNlLCB3aGljaCBwcmV2ZW50cyByZXVzZSBhY3Jvc3Mgc3ViLVBIWSBpbnN0YW5jZXMuCj4+
Pj4+Pj4KPj4+Pj4+PiBSZWZhY3RvciBfX3BoeV9waXBlX2Nsa19yZWdpc3RlcigpIGFzIGEgZ2Vu
ZXJpYyBoZWxwZXIgYW5kIHJlZHVjZQo+Pj4+Pj4+IHBoeV9waXBlX2Nsa19yZWdpc3RlcigpIHRv
IGEgdGhpbiB3cmFwcGVyIGFyb3VuZCBpdC4gU2ltaWxhcmx5LCBleHRyYWN0Cj4+Pj4+Pj4gcW1w
X3BjaWVfcGFyc2VfZHRfY29tbW9uKCkgZnJvbSBxbXBfcGNpZV9wYXJzZV9kdCgpIHRvIGhvbGQg
dGhlIHJlZ2lzdGVyLQo+Pj4+Pj4+IG1hcHBpbmcgYW5kIHBpcGUtY2xvY2sgc2V0dXAgdGhhdCB3
aWxsIGJlIHNoYXJlZCBiZXR3ZWVuIHN1Yi1QSFkgaW5zdGFuY2VzLAo+Pj4+Pj4+IHdpdGggcGlw
ZSBjbG9jayBuYW1lcyBwYXJhbWV0ZXJpc2VkIHBlciBpbnN0YW5jZS4KPj4+Pj4+Pgo+Pj4+Pj4+
IFRoaXMgaXMgYSBwcmVwYXJhdG9yeSBzdGVwIGJlZm9yZSBhZGRpbmcgbXVsdGktUEhZIHN1cHBv
cnQuIE5vIGZ1bmN0aW9uYWwKPj4+Pj4+PiBjaGFuZ2UgZm9yIGV4aXN0aW5nIHBsYXRmb3Jtcy4K
Pj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVh
bGNvbW0uY29tPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS5jIHwgNzYgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPj4+
Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+
Pj4+Pj4KPj4+Pj4+IEknZCBzdWdnZXN0IHNwbGl0dGluZyB0aGUgR2x5bXVyIFBIWSB0byBhIHNl
cGFyYXRlIGRyaXZlci4gT3RoZXJ3aXNlIHdlCj4+Pj4+PiBlbmQgdXAgaGF2aW5nIHRvbyBtYW55
IHNpbmdsZS1wbGF0Zm9ybSwgc2luZ2xlLWRldmljZSBzcGVjaWZpY3Mgd2hpY2gKPj4+Pj4+IGRv
bid0IGFwcGx5IHRvIG90aGVyIHBsYXRmb3Jtcy4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEkgZG9uJ3Qg
dGhpbmsgdGhhdCdzIHJlYWxseSBuZWVkZWQuIFRoaXMgc2hhcmVkIFBIWSBjb25jZXB0IGlzIGdv
aW5nIHRvIGJlCj4+Pj4+IGFwcGxpY2FibGUgdG8gdXBjb21pbmcgU29DcyBhcyB3ZWxsLiBBbmQg
bW9yZW92ZXIsIHRoZSBzcGxpdCB3b24ndCBiZSBjbGVhbgo+Pj4+PiBlaXRoZXIuIFdlIHN0aWxs
IG5lZWQgdG8gcmV1c2UgYSBsb3Qgb2YgY29tbW9uIGxvZ2ljIGluIHRoZSAncGh5LXFjb20tcW1w
LXBjaWUnCj4+Pj4+IGRyaXZlciBhbmQgbWF5IG9ubHkgZW5kIHVwIGtlZXBpbmcgdmVyeSBtaW5p
bWFsIGNvZGUgaW4KPj4+Pj4gJ3BoeS1xY29tLXFtcC1wY2llLWdseW11cicuCj4+Pj4KPj4+PiBU
aGVuIHNwbGl0dGluZyBtYWtlcyBldmVuIG1vcmUgc2Vuc2UuIExldCdzIG5vdCBjbHV0dGVyIHRo
ZSBleGlzdGluZwo+Pj4+IGRyaXZlciB3aXRoIHRvbyBtYW55IGNvbmRpdGlvbnMgYW5kIG9wdGlv
bnMuCj4+Pj4KPj4+Pj4KPj4+Pj4gSWYgeW91IGFyZSBjb25jZXJuZWQgYWJvdXQgdGhlIGZpbGUg
c2l6ZSBvZiAncGh5LXFjb20tcW1wLXBjaWUnLCB0aGVuIHdlIHNob3VsZAo+Pj4+PiBtb3ZlIHRo
ZSBTb0Mgc3BlY2lmaWMgJ2NmZycgc3RydWN0cyBpbnRvIGEgc2VwYXJhdGUgZmlsZSBhcyB0aGF0
J3Mgd2hhdAo+Pj4+PiBvY2N1cHlpbmcgbWFqb3JpdHkgb2YgdGhlIHNwYWNlLgo+Pj4+Cj4+Pj4g
Tm8sIGl0J3MgcmVhbGx5IHRoZSAnc2hhcmVkJyBwYXJ0Lgo+Pj4+Cj4+Pgo+Pj4gVG8gY29uZmly
bSwgYXJlIHlvdSBva2F5IHdpdGggc29tZSBjb2RlIGR1cGxpY2F0aW9uIGJldHdlZW4gdGhlIG5l
dwo+Pj4gR2x5bXVyLXNwZWNpZmljIGRyaXZlciBhbmQgcGh5LXFjb20tcW1wLXBjaWUgZHJpdmVy
Lgo+Pgo+PiBUaGF0J3MgYSBuZWNlc3NpdHksIHRvIHNvbWUgZGVncmVlLiBTZWUgZS5nLiBxbXAt
Y29tYm8gYW5kIHFtcC11c2JjIAo+Pgo+IEkndmUgYWxyZWFkeSBwcm90b3R5cGVkIGEgc2VwYXJh
dGUgR2x5bXVyIGRyaXZlciwgYW5kIGl0IHR1cm5lZCBvdXQgYmV0dGVyCj4gdGhhbiBleHBlY3Rl
ZCDigJQgdGhlcmUncyBhY3R1YWxseSBub3QgbXVjaCBkdXBsaWNhdGlvbi4gVGhlIHBhcnRzIHRo
YXQgZG8KPiBvdmVybGFwIGFyZW4ndCBmdWxseSBpZGVudGljYWwgZWl0aGVyOyB0aGV5IHRlbmQg
dG8gZGl2ZXJnZSBvbmNlIHRoZQo+IEdseW11ci1zcGVjaWZpYyBoYW5kbGluZyBpcyBmYWN0b3Jl
ZCBpbi4KPiAKPiBDdXJyZW50bHksIEkgbWVldCBhbiBpc3N1ZSB3aGVuIHRlc2luZyB0aGUgcGF0
Y2gsIGFuZCB3aWxsIHBvc3QgaXQgYWZ0ZXIKPiBmaXhpbmcgdGhlIGlzc3VlLgoKR29vZCwgdGhh
bmsgeW91IQoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
