Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5697D606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 12:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nCh/BVGd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QWi/nl28;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=acB3yzCx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AKE1y8JK0Ji4jdu8Zoz/xe2l94wx732YbEkKKTnQGk0=; b=nCh/BVGdvzRjcckBoH26KwFd0z
	vMAF7PsEaw1M09+P5m4c/xkZ2lj2WFAL9lzw1LAo6XGjZXnFWOlhlEytONW2c8SmtIBgnNjKPaC7z
	1eZ6WfsFgdt6MuDKNxVOqJ7Lyw9ckUJNSGsY74EAGIm8jhgRp6EMeIqbSv1Rj3G5XdmO2vhSz7urr
	z36t33Dzs0zhaF1Kat3tKhw76oQ1B4BOy8NhcoM29qDC2doV5PbQdPGFz4ZRnEJUL+LwFe8ZOw0hH
	PLMNtHOCCf2SaUtrxrOEcJCkZSclyY2fFoz6h4jRVIHpCAGNKYBqs2/bwnNvFkkiviGwET6Gde/6j
	6ZZ94Lhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJhn-00000002UcG-3p3F;
	Mon, 26 Oct 2026 12:21:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJhl-00000002Ubg-04eS
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 12:21:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69QAtMFs2009906
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:21:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	okzDhOTrwCXTYAXnL64QNfIG2ShWfufp1R4BHN3mW+U=; b=QWi/nl281MHBftVZ
	+qM0biBZUyPJlArgcbADVnwBIGnS/sBmfD7VRz9tGOXJtvXbOfAmYWt5xuWCb3sw
	Mlm7EKZfJvnZc7bUrQ9HeTWQgt4yQxhthA0F7jAmoorw/NWrn9YOULuFxIJSC707
	tTzAffr0wHAYa6Oyr59P61fOKheO5vap+7KISwzTQww0ZG07KfVwHse3dOBiRJvQ
	K6tKxukGFQI//N4P+iggs7QkZfowI2Kdet/oHWEkrTklaZeyBxz+RUHpMeJOn5UA
	arY/4gbkV94tQgB8PsIfd1U/E5CWrgVJhdHiNvqyWII1ofh07isNQJmd0bNTXV2e
	AiSl/A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgn27xaxd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:21:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f568dee56so422693785a.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 05:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793017291; x=1793622091; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=okzDhOTrwCXTYAXnL64QNfIG2ShWfufp1R4BHN3mW+U=;
        b=acB3yzCxOYI+sNJ0MiRvst8YgOa5fNn72S0++Ijg5DEKUpWb225KQq3/pRS+JxY9sk
         6jTs6fGzeroA4FjScTOvIQ+KxU0DA640+WgYKRpAfVCmXIwLJSWUUkVM/TzVS4xp3EbV
         peIGIMQ9MpfwMa/oAzBls1hq5/7GuHAuEC6mewTRycxY8WBeJ0xep4aipcBFLutoGQ9J
         txewxmd0rR4o1I6n5mEmvVwKz1gyaiez438zQbi3Bu+m8kEc/F0JXG/9c/gv175e9gi4
         O8OribfDdz2dA/1vbW5h0vUBW18KW6ZP738Z+N+lLb1PebwzYa7LvBZAyrP0cJrXMIY6
         Aylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793017291; x=1793622091;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=okzDhOTrwCXTYAXnL64QNfIG2ShWfufp1R4BHN3mW+U=;
        b=1S0Ch16JYlY0q7mWS+Dl8WaxrnjIiHTMgIqw1dzzICJ/0U4+mYGoeQzNx5OF8R7Aqn
         unSXzFgHoSqxtcruBjQNeLQWVF7lf6CC9WzOo1+xH+ulvfvpCGdtKN6D3ICQo8VlJ1GL
         aAuA8+IkAH9tyxlOG9GpiKjVqM4cJAlP1GE9qh0P8nBEoyhqmc20YvTlGRrVcInCeWiS
         QcVdcUQ+o//nppOFoxe9roYOkrxjT0q8xVr2qfULhCE1z5m1yF2D68HPVMHxcaDl7d6h
         fEjxnOJlGk2bUMrZVqFSd0BAZaS991khFJ6yhkXdSt2cpu2+A3yRde8svsiZ/nMw/026
         8c6w==
X-Forwarded-Encrypted: i=1; AKwUvBw1WtQ8IyNfrmos0HwqEvWLk9sZw6Ljk144cdgnDutObiNVgWTTrzfKj1ttK//faBJYc9Bs0+kJGTI=@lists.infradead.org
X-Gm-Message-State: AFq9FYIt/Rkc5NX/K5r4AbTEFiskkfIPuLlVye4MvXuN6DZkpG2oLCRo
	vA59AP5l6pPCZeLX/HgSH9IfC8pqW2taC/yc3mx1A+VwZQFTjUU3JGdSysIvytryugYw4mjRqVE
	uS7woItYcvZ1sFTOvZYD28+HPgXIGSPi9/HM6Ew59FCUEob5KnTdxvlAE0EG/rggyr9Mf
X-Gm-Gg: AYBFou04td+MlVgv82lDLPF0oq3JO23X7seTQyMkL9BDOkY1a5si2w+cPTXL8tCIPEg
	TqM+WLDk78JbWIcDl7gn+rYW7YjDpPHl64F3XsksiLYFcoPfLVn/bWc5hhOSzusxoI6KSpmNikp
	n6X/DvJAXJJNCpvpTDBKvupisqeVSfCW0OnCx8ZBgHycQ778yoN0gAIXLaZfvp0ZDEnCWYI+9VE
	XF/z0NzySf1Vmds3dRP9j5Q3yvr2sAQYS7exXjOzcS8f/ApoO5aHWouz3d5zPk4Rv70TaNuQ1YK
	ow2ptLSqgeuIe7ZoEMMftrTArNCysNp3Hct5xZnXDuU41irqc+qy5iWzw0UHIjoBZ5b9UsheDRw
	97B85PKtT/Y89vk5b0NlsWgjz+g0A
X-Received: by 2002:a05:620a:470d:b0:93e:c12c:fbba with SMTP id af79cd13be357-940ef94d193mr979021985a.71.1793017290574;
        Mon, 26 Oct 2026 05:21:30 -0700 (PDT)
X-Received: by 2002:a05:620a:470d:b0:93e:c12c:fbba with SMTP id af79cd13be357-940ef94d193mr979017285a.71.1793017289813;
        Mon, 26 Oct 2026 05:21:29 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd64cd1dsm306573566b.45.2026.10.26.05.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 05:21:28 -0700 (PDT)
Message-ID: <c38dd906-1436-4aef-9caf-8c2901a7d09e@oss.qualcomm.com>
Date: Mon, 26 Oct 2026 17:51:19 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/11] phy: qualcomm: qmp-combo: Add hardware-specific
 dp_aux_cfg2 and dp_phy_cfg1 fields
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
 <e3a8d06e-5f7f-4743-a332-b2a8ef30e781@oss.qualcomm.com>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <e3a8d06e-5f7f-4743-a332-b2a8ef30e781@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=G7GJgNk5 c=1 sm=1 tr=0 ts=6adf45cb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=z9__apPl9ExnX2lTgnYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: fPEvA8SGDc8rxBnUqQIaLGr1ypXCT1g6
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDA0OSBTYWx0ZWRfX0cm9jbfDfHQs
 4t9Y52uUrrZ9HzU5L3wb2QKIKLowJYPGSUp0X7XWzQQwYo13Ht47MIPsDXt4nU3FBObCZLN/P7l
 x2OFOAtuBBj5sg7jRnJ0smwkBpuP9eM=
X-Proofpoint-GUID: fPEvA8SGDc8rxBnUqQIaLGr1ypXCT1g6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDA0OSBTYWx0ZWRfX42IrDsinfxP7
 oqP6KpOR28Xw0FkuAO6izAUQZd25EI0RyMgv6akQRN3eRz5/0M8+Bc5EGEiRyhScgIr/E8PydWm
 JRnkE0QupBoSw6jqm5xrenjoud0GGtHH4iex4xTAaOyyPisOGeeGvUBs83SCBZS2r4wo0yjeufb
 3l+rgEzTmqzwL6FnGlhR1Y99rT9vmeMdRVtwljY1IPN0qxFWXhRELBzToZfIIt19OGQY8/ccrVR
 /YHwRgA8M024bHsNwdKIcj2gCRqD+yocLM7HXb9NpLrPrapBZhVyQforAcXk32SYiOCVVN0+T4c
 ijJlvgiTcgmnzHgeYk/A/SkkGoGiNbEX3qziK43g1NbUoB/tWR9asmaQ1yNEVJXOWOrQrjfoyWp
 GBlziJK4bEdTnnGjStiKsJmrunvBFbyZxqSna7+pzYTRuKT4TlpV3PeZOYFR6+ovZgZrvnrwNLB
 8jkgiX6be5FM8yyhcgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_052133_174345_936D6F6D 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDEwLzIyLzIwMjYgNDowNCBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAxMC8xLzI2
IDExOjM0IEFNLCBOYWJpZ2UgQWFsYSB3cm90ZToKPj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRl
c2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4KPj4KPj4gQWRkIGRwX2F1eF9jZmcyIGFuZCBkcF9w
aHlfY2ZnMSBmaWVsZHMgdG8gcW1wX3BoeV9jZmcgdG8gYWxsb3cKPj4gaGFyZHdhcmUtc3BlY2lm
aWMgRFAgUEhZIHJlZ2lzdGVyIHZhbHVlcyB0byBiZSBzcGVjaWZpZWQgcGVyLXBsYXRmb3JtCj4+
IHJhdGhlciB0aGFuIGhhcmRjb2RlZCBpbiB0aGUgY29uZmlndXJlIGZ1bmN0aW9ucy4KPj4KPj4g
RGVmaW5lIG5hbWVkIGNvbnN0YW50cyBRU0VSREVTX0RQX1BIWV9BVVhfQ0ZHMl9WNDU2L1Y4IGFu
ZAo+PiBRU0VSREVTX0RQX1BIWV9DRkcxX1Y0NTYvVjggZm9yIGJldHRlciByZWFkYWJpbGl0eSBh
bmQgbWFpbnRhaW5hYmlsaXR5Lgo+Pgo+PiBQb3B1bGF0ZSB0aGUgbmV3IGZpZWxkcyBpbiBhbGwg
ZXhpc3RpbmcgRFAgUEhZIGNmZyBzdHJ1Y3R1cmVzOgo+PiAtIFY0NTYtYmFzZWQgcGxhdGZvcm1z
IChzYXIyMTMwcCwgc2M4MTgweCwgc2M4MjgweHAsIHgxZTgwMTAwLCBzbTgyNTAsCj4+ICAgIHNt
ODM1MCwgc204NDc1LCBzbTg1NTAsIHNtODY1MCwgc204NzUwKSB1c2UgVjQ1NiBjb25zdGFudHMK
Pj4gLSBHbHltdXIgKFY4KSB1c2VzIFY4IGNvbnN0YW50cwo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBS
aXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVk
LW9mZi1ieTogTmFiaWdlIEFhbGEgPG5hYmlnZS5hYWxhQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0t
LQo+PiAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIHwgMzcgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jCj4+IGluZGV4IDY0NmU5N2E1Mjg4Ni4uZWJlMmU2MTM2ZjdhIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+PiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+PiBAQCAtMjQ4
Niw2ICsyNDg2LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX2NvbWJvX2xhbmVfbWFwcGlu
ZyBkcF9kYXRhX2xhbmVzW10gPSB7Cj4+ICAgCj4+ICAgc3RydWN0IHFtcF9jb21ibzsKPj4gICAK
Pj4gKy8qIERQIFBIWSBBVVhfQ0ZHMiByZWdpc3RlciB2YWx1ZXMgZm9yIGRpZmZlcmVudCBoYXJk
d2FyZSB2ZXJzaW9ucyAqLwo+PiArI2RlZmluZSBRU0VSREVTX0RQX1BIWV9BVVhfQ0ZHMl9WNDU2
CQkweGE0Cj4+ICsjZGVmaW5lIFFTRVJERVNfRFBfUEhZX0FVWF9DRkcyX1Y4CQkweDA2Cj4gVGhl
IGRvYyBzYXlzIHRoaXMgc2hvdWxkIGJlIDB4MTYgZm9yIGZsaXBwZWQgdHlwZWMKClRoYW5rIHlv
dSBmb3IgdGhlIHJldmlldywgS29ucmFkLgoKQWZ0ZXIgY2hlY2tpbmcgdGhlIGhhcmR3YXJlIGRv
Y3VtZW50YXRpb24gbW9yZSBjYXJlZnVsbHksIEFVWF9DRkcyIApkZXBlbmQgdXBvbiB0aGUgc3dh
cF9zZWwsIHdoaWNoIGRvZXMgbm90IGluZGljYXRlIHRoZSBUeXBlLUMgCm9yaWVudGF0aW9uLiBJ
dHMgdmFsdWUgZGVwZW5kcyBvbiB0aGUgU29DIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24g4oCUIApz
cGVjaWZpY2FsbHkgaG93IHRoZSBBVVggbGluZXMgYXJlIHBoeXNpY2FsbHkgd2lyZWQgb24gdGhl
IGJvYXJkLgoKU28gdHlpbmcgQVVYX0NGRzIgdG8gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSB3
b3VsZCBiZSBpbmNvcnJlY3QuCgpJIGFsc28gdGVzdGVkIHRoZSBhcHByb2FjaCB5b3Ugc3VnZ2Vz
dGVkLCB3aGVyZSBkaWZmZXJlbnQgQVVYX0NGRzIgCnZhbHVlcyBhcmUgcHJvZ3JhbW1lZCBiYXNl
ZCBvbiB0aGUgY2FibGUgb3JpZW50YXRpb24uIEhvd2V2ZXIsIHdpdGggdGhhdCAKY2hhbmdlLCBs
aW5rIHRyYWluaW5nIGZhaWxzIGNvbnNpc3RlbnRseS4KCgpUaGFua3MsCgpOYWJpZ2UKCj4KPj4g
Ky8qIERQIFBIWSBDRkdfMSByZWdpc3RlciB2YWx1ZXMgZm9yIGRpZmZlcmVudCBoYXJkd2FyZSB2
ZXJzaW9ucyAqLwo+PiArI2RlZmluZSBRU0VSREVTX0RQX1BIWV9DRkcxX1Y0NTYJCTB4MGYKPj4g
KyNkZWZpbmUgUVNFUkRFU19EUF9QSFlfQ0ZHMV9WOAkJCTB4MmYKPiBBbmQgdGhpcyBzaG91bGQg
cmVwb3J0ZWRseSBiZSAweDEzLzB4NTMgZm9yIG5vcm1hbC9mbGlwcGVkCj4KPiBLb25yYWQKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
