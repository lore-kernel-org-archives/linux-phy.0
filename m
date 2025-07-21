Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA0DC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 04:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pu1LV8vjt+IZ7JiXvu2xkvgPCCgtsahDZaQ5cFbiSRI=; b=LyCFs5bIS6mz7e
	bhsgRSm1qOrjVxrgSJXeMRYA9o42f+LM7HjRmTfdmgTf2Q3MdNlrK5bskst55nGEh99mEMGuinbJu
	OXPYY+tqpDjuUGcKXe16fqiE/U/zSWQFUxU2TRbZMKhnydpg4B2ms/Y5vSHyPG09oarQuEXAz2yyX
	rr3TjX1Gsu4LdGLhR/Zx4alp9hCNjvRZPHYQZ0qeutJAC4/W7Z78XUOHgNvcQQ72Ek3J+MD9zLHFI
	KiqVZOS3t96goakhntp92jmRgvX8PKcR4P6AK3D/o9jJbRbzuNFVcGTgGWBq6uECE8Blby9CypTEn
	7q2q3Nf4O/zjaPIAm4yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udi1G-0000000G9Mb-4C4q;
	Mon, 21 Jul 2025 04:20:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udhyu-0000000G97P-1BzI
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 04:18:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56L41483031038
	for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 04:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0HxS55+QTxxnhovCNlJMVgeCUCIs7adrQbeCrM4+8pY=; b=Pd+gqMZN6VlsReQ2
	ApLJJ3KRx8yfPGzjKNebwJ80Go6FToeUYYa4O3lfQ5S2qmB4E34dhEzTL4M9KXN7
	vU58SaWiWgI4OzuOYPgSrgb4RQf375zxiPkmT2RUyzmLU7FJsSnJTkBQqSIc0xQe
	hH68NESm3siMXM5EMpgKo76pIExrNphUcOUVqi/jQgSj23wvtEG8dmGSi6TaCuPI
	thk+Z/BVtHM2Lw4D3n6mBmBwz1l9IKfKnqGriP6TdGbt06GYnx+uoH91zzfPDYI6
	F/Oi+QNMY1ijMZcOsntm8K2USXBvnjx669FrqrQIPQixelVh80lAKL/3UoieitQL
	j6WMLQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048tba3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 04:18:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74951713860so421970b3a.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Jul 2025 21:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753071504; x=1753676304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0HxS55+QTxxnhovCNlJMVgeCUCIs7adrQbeCrM4+8pY=;
        b=H/AxQERGcKiePKC9EMDQQYCN162D2zlkGWZZBcIZZcKsmWbEFNs9aBq3fwL2trcRFq
         6pMrARcohM5qHelouHVsDH2h7sdZippPVBSvTaZMhDmETdU9ldys1NxvQhLvXvRHNbMV
         6/q0RseVyHNB1F8BJbZuo3VP+p9c3y8M7wlGER87wiDs2NMuaDxf334sJuRJRb71CElY
         aE8qaATGvn2FiixOHFbDPGit9PiVzn1I1u1pA7wUq7X7X/oeu6gr8gL933Fnuyxf6zAb
         kPJvJkJ7WH930cuUfuwye8ZCag/prveTYWPtM1+FieKqBdOVwcmXQ9ofga3mSZowREMs
         hDwA==
X-Forwarded-Encrypted: i=1; AJvYcCXXA0HLRaX4ut6rqnOFfR49lS/FuH0LpUB1GezYMcYppSdSbwiYtg653reIbFKMZi70MF/pc6ovLP4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQge9QCaybP3l6kI8V6lRDLQhtvzO6nHXnGi12dAoEbWy/0Tcm
	pZ10SL0+txMHrgukvSHTxQmI2sAhcDE8raJmqtPVPR4rVkANu48Dq5Fv9vMHD0d6MhkVToqxWNg
	dzPqahsHMpSVUbUdz9hmAkDIQwYLXDlq2gV18YtVfvfrpCibc9JxlJSwDTkZtzvbgfir9
X-Gm-Gg: ASbGncuBQyKIAMBmZorFfOyzoOKs8T5hB80W5yrQu89MXwuN3hbX03PQvAJcFDBu7WX
	gwN2mUI6ESZ0lKEWYHuObKP+Gbt8lsO43PzLKtJz5X1MCi4ddZoctntXCEkl5x6+oRk2HgL43f5
	fnoo9dcJbYYOi7Qld5bJIyYClYfugG+Y8u//acsW3F5cjCLLWBORAPW2xIJfZuoxAbeuJg9MrG0
	mejEdzmKclW8HQJBRObEEpgvLyt9cHLuLE6DblUVvKe1npaTWmJx7TJESkOklbZ1wuIo9n6i9rh
	A/5VBExfo2Scoe4bNsvqp3CKxNwR+nhnoKq/4qmqid+WgjiGs8HWaSogaqktPYz8PdhYsoZvaV4
	hfotx4v4cQ63UxidaHQalHB8tW+9j
X-Received: by 2002:a05:6a20:9147:b0:1ee:d6da:b645 with SMTP id adf61e73a8af0-237d5c0df9emr13823364637.4.1753071504497;
        Sun, 20 Jul 2025 21:18:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9E+Jpxuf/n9mwdKcrc+ICdr6n87fGKbL6wE5SUt8XIJ2tugZsZ8TP4nLkT2kWBtaUKyMt+w==
X-Received: by 2002:a05:6a20:9147:b0:1ee:d6da:b645 with SMTP id adf61e73a8af0-237d5c0df9emr13823324637.4.1753071503997;
        Sun, 20 Jul 2025 21:18:23 -0700 (PDT)
Received: from [10.133.33.17] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe8ea7bsm4493637a12.21.2025.07.20.21.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 21:18:23 -0700 (PDT)
Message-ID: <a723b6a6-c70a-442f-9785-9f607548664f@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 12:18:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
 <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
 <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
 <w66xyhu5w7ajpkennvj24cad4j6izvapsp3reyla7iui2jdgkx@d43b6z3qw5tj>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <w66xyhu5w7ajpkennvj24cad4j6izvapsp3reyla7iui2jdgkx@d43b6z3qw5tj>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDAzNCBTYWx0ZWRfX+Cq9x3UAb7g/
 nVn77KWTSkXcCj0x/kha29vDadj3jVj0KrzIem+VSJCUUEuTYhNRv1bvLVTaxE6kANVNhh19Rt0
 AHFC5YVbnW8geqVVBqv1uH4g3AGbhpqqDmKo1aN9nlHeEFg+40KwEX2IMBoNg1MKbNRGejMmXLs
 ZvOwo49+cN709e2mUIKFT31lJK1GAatJ+o2abqy75UuiEBq8Fm34oYFb8kDK1ZTpeL2D4vl/cbB
 hesRWbTjDSyPzkQcc94JqX8wWXbX36kvQUQETffXqwW0sweSb4qDTXCWiTooBqnuZll9ezKt9d/
 sKPSBNjRizcqg54nM+5fa6CmTMXQ62i7L8TFitnpM0XIYyaDjMy6TlpaswzFwjTcDkXi13eJZHw
 I6q7xX5EDzknXh3K4vWXqwB+VQonah4IOzPW0Sv8ZmOhYlDm9Q+0bFx7DET2MdKBiDUOvHox
X-Authority-Analysis: v=2.4 cv=Jb68rVKV c=1 sm=1 tr=0 ts=687dbf91 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=q-zp-rPcFIMxVU44S18A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: dgYi8rheazuM1A2HVMry1i4-OG9Eborq
X-Proofpoint-ORIG-GUID: dgYi8rheazuM1A2HVMry1i4-OG9Eborq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_211828_438512_CDE6B535 
X-CRM114-Status: GOOD (  22.57  )
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

Ck9uIDcvMTkvMjAyNSA1OjQzIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
SnVsIDA5LCAyMDI1IGF0IDA1OjE2OjAyUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pgo+
PiBPbiA1LzI4LzIwMjUgNDo0OSBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+IE9uIDEyLzMv
MjQgMzowNyBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+PiBPbiBUdWUsIERlYyAwMywg
MjAyNCBhdCAwNDoxMzoyMlBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+Pj4KPj4+Pj4g
T24gMTEvMjkvMjAyNCA5OjUzIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+Pj4gT24g
RnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVp
Y2luYy5jb20+IHdyb3RlOgo+Pj4+Pj4+IEFkZCBhIG1lY2hhbmlzbSB0byByZXRyeSBMaW5rIFRy
YWluaW5nIDIgYnkgbG93ZXJpbmcgdGhlIHBhdHRlcm4gbGV2ZWwKPj4+Pj4+PiB3aGVuIHRoZSBs
aW5rIHRyYWluaW5nICMyIGZpcnN0IGF0dGVtcHQgZmFpbHMuIFRoaXMgYXBwcm9hY2ggZW5oYW5j
ZXMKPj4+Pj4+PiBjb21wYXRpYmlsaXR5LCBwYXJ0aWN1bGFybHkgYWRkcmVzc2luZyBpc3N1ZXMg
Y2F1c2VkIGJ5IGNlcnRhaW4gaHViCj4+Pj4+Pj4gY29uZmlndXJhdGlvbnMuCj4+Pj4+PiBQbGVh
c2UgcmVmZXJlbmNlIGNvcnJlc3BvbmRpbmcgcGFydCBvZiB0aGUgc3RhbmRhcmQsIGRlc2NyaWJp
bmcgdGhpcyBsb3dlcmluZy4KPj4+Pj4+Cj4+Pj4+IFBlciBEaXNwbGF5UG9ydCAxLjRhIHNwZWNp
ZmljYXRpb24gU2VjdGlvbiAzLjUuMS4yIGFuZCBUYWJsZSAzLTEwLCB3aGlsZSB0aGUgc3RhbmRh
cmQgZG9lc24ndCBleHBsaWNpdGx5IGRlZmluZSBhIFRQUyBkb3duZ3JhZGUgbWVjaGFuaXNtLCBp
dCBkb2VzIHNwZWNpZnk6Cj4+Pj4gQW55dGhpbmcgaW4gRFAgMi4xPwo+Pj4+Cj4+IEluIHRoZSBE
UCAyLjEgc3BlYywgbWFpbmx5IG9uIHNlY3Rpb24gJzMuNi43LjIgOGIvMTBiIERQIExpbmsgTGF5
ZXIgTFRUUFIgTGluayBUcmFpbmluZyBNYW5kYXRlcycsIGRlZmluZWQgJ0xUVFBSIHNoYWxsIHN1
cHBvcnQgVFBTNCcuCj4+IFRoZSBvdGhlciBwYXJ0cyBzZWVtcyBzaW1pbGFyIHRvIHRoZSAxLjQg
c3BlYy4KPj4+Pj4gLSBBbGwgZGV2aWNlcyBzaGFsbCBzdXBwb3J0IFRQUzEgYW5kIFRQUzIKPj4+
Pj4gLSBIRFIyLWNhcGFibGUgZGV2aWNlcyBzaGFsbCBzdXBwb3J0IFRQUzMKPj4+Pj4gLSBIRFIz
LWNhcGFibGUgZGV2aWNlcyBzaGFsbCBzdXBwb3J0IFRQUzQKPj4+Pj4gV2hpbGUgdGhlc2UgY2Fw
YWJpbGl0aWVzIGFyZSBleHBsaWNpdGx5IGRlZmluZWQgRFBDRCBmb3Igc2luayBkZXZpY2VzLCBz
b3VyY2UgZGV2aWNlIGNhcGFiaWxpdGllcyBhcmUgbGVzcyBzdHJpY3RseSBkZWZpbmVkLCB3aXRo
IHRoZSBtaW5pbXVtIHJlcXVpcmVtZW50IGJlaW5nIHN1cHBvcnQgZm9yIFRQUzEgYW5kIFRQUzIu
Cj4+Pj4+IEluIFFDUzYxNSBEUCBwaHkgaXMgb25seSBzdXBwb3J0aW5nIHRvIEhCUjIsIHdlIG9i
c2VydmVkIGEgY3JpdGljYWwgaW50ZXJvcGVyYWJpbGl0eSBzY2VuYXJpbyB3aXRoIGEgRFAtPkhE
TUkgYnJpZGdlLiBXaGVuIGxpbmsgdHJhaW5pbmcgYXQgVFBTNCBjb25zaXN0ZW50bHkgZmFpbGVk
LCBkb3duZ3JhZGluZyB0byB0aGUgbmV4dCBsb3dlciB0cmFpbmluZyBwYXR0ZXJuIHN1Y2Nlc3Nm
dWxseSBlc3RhYmxpc2hlZCB0aGUgbGluayBhbmQgZGlzcGxheSBvdXRwdXQgc3VjY2Vzc2Z1bGx5
Lgo+Pj4+IEFueSBvdGhlciBkcml2ZXIgZG9pbmcgc3VjaCBUUFMgbG93ZXJpbmc/IE9yIG1heWJl
IHdlIHNob3VsZCBiZQo+Pj4+IHNlbGVjdGluZyBUUFMzIGZvciBIQlIyLW9ubHkgZGV2aWNlcz8K
Pj4gVGhpcyBsb2dpYyBpcyBwb3J0aW5nIGZyb20gcXVhbGNvbW0gZG93bnN0cmVhbSwgCj4gSG9w
ZWZ1bGx5IGEgZG93bnN0cmVhbSBoYXMgc29tZSBzZW5zaWJsZSBjb21taXQgbWVzc2FnZSB3aGlj
aCBkZXNjcmliZXMKPiB0aGUgaXNzdWUgYW5kIHRoZSBjb25maWd1cmF0aW9uIHRvIHJlcHJvZHVj
ZSBpdD8KClRoZSBkb3duc3RyZWFtIGNvbW1pdCBsb2cgc2hvd3MgaW4gMjAxOS8wOCwgU004MjUw
IChrZXJuZWwgNC4xOSkgdHlwZS1jIERQIG1lZXQgTFQyIGZhaWx1cmVzIG9uIFNhbXN1bmcgSERS
IGN1cnZlZCBtb25pdG9yLCB0aGUgcGF0dGVybiBsb3dlcmluZyBmaXggd2FzIGFkb3B0ZWQuCk9u
IFFDUzYxNSwgYW4gbURQLXRvLUhETUkgYWRhcHRlciBjYWJsZSBleGhpYml0ZWQgc2ltaWxhciBM
VCBmYWlsdXJlIHBhdHRlcm4sIGFuZCBpdCdzIHdvcmtzIHdpdGggdGhpcyBzb2x1dGlvbi4KSG93
ZXZlciwgSXQncyByYXJlIGNvbXBhdGliaWxpdHkgY2FzZSB3aXRoIHNwZWNpYWwgZGV2aWNlIGFu
ZCBsb3dlcmluZyBzZWVtcyB2aW9sYXRlcyBwcm90b2NvbCBzdGFuZGFyZHMsIG1heWJlIG5vdCBz
dWl0YWJsZSBmb3IgZ2VuZXJhbCBkZXBsb3ltZW50LgoKPj4gRm9yIG90aGVyIGRldmljZSwgb25s
eSBmb3VuZCBpbiBzb21lIG9sZGVyIFR4IGNoaXBzIGxpa2UgaTkxNe+8iGludGVsX2RwX3RyYWlu
aW5nX3BhdHRlcm4pIHVzZWQgdGhlIG1heGltdW0gaGFyZHdhcmUtc3VwcG9ydGVkIHBhdHRlcm5z
LCBidXQgbm90IGxvd2VyaW5nLgo+Pgo+PiBBY2NvcmRpbmcgdG8gdGhlIGRlc2NyaXB0aW9uIGlu
IERQQ0QgdGFibGUgMi0yMzIgMDAzaCwgRnJvbSB0aGUgRFAgc3BlYyBwZXJzcGVjdGl2ZSwgaXQg
YXBwZWFycyB0aGF0IGFsbCBzdXBwb3J0ZWQgY2FzZXMgc2hvdWxkIHByZWZlcmFibHkgYWRvcHQg
VFBTNCwgYXMgaXQgaXMgbW9yZSByb2J1c3QuCj4gSWYgb3RoZXIgZHJpdmVycyBkb24ndCBwZXJm
b3JtIHRoaXMga2luZCBvZiBsb3dlcmluZywgSSdkIHByZWZlciBpZiB3ZQo+IGRvbid0IHBlcmZv
cm0gaXQgdG9vLgpBZ3JlZSzCoCBJJ2xsIHJlbW92ZSB0aGlzIHBhdGNoIGluIGFuIHVwY29taW5n
IHZlcnNpb24gc29vbi4KPgo+PiAnRFBSWHMgc2hvdWxkIHN1cHBvcnQgVFBTNCBhbmQgc2V0IHRo
aXMgYml0LCByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIERQUlggc3VwcG9ydHMgSEJSMyBiZWNh
dXNlIFRQUzQgaXMgbW9yZSBjb25kdWNpdmUgdG8gcm9idXN0IGxpbmsgZXN0YWJsaXNobWVudCB0
aGFuIFRQUzIgYW5kIFRQUzMuCj4+IDAgPSBUUFM0IGlzIG5vdCBzdXBwb3J0ZWQuCj4+IDEgPSBU
UFM0IGlzIHN1cHBvcnRlZCAoc2hhbGwgYmUgc3VwcG9ydGVkIGZvciBkb3duc3RyZWFtIGRldmlj
ZXMgd2l0aCBEUENEIHIxLjQsIGV4Y2VwdCBmb3IgZURQUlhzKS4nCj4+Cj4+IEFsdGhvdWdoIG1h
eGltdW0gY2FwYWJpbGl0eSBvZiBRQ1M2MTUgaXMgSEJSMiwgYnV0IHRoZSBhY3R1YWwgcGF0dGVy
biBzdXBwb3J0cyBUUFM0LiAKPj4gRnJvbSBwdXJlIGRlc2lnbiBwZXJzcGVjdGl2ZSwgaXQgd291
bGQgYmUgY2xlYW5lciB0byBkcm9wIHRoaXMgbG93ZXJpbmcgaW4gbmV4dCBwYXRjaC4gCj4+PiBC
dW1wLCB0aGlzIHBhdGNoIGxvb2tzIGludGVyZXN0aW5nIGFuZCBJJ2QgbGlrZSB0byBzZWUgaXQg
cmV2aXNpdGVkIGlmCj4+PiBpdCdzIGNvcnJlY3QKPj4+Cj4+PiBLb25yYWQKPj4KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
