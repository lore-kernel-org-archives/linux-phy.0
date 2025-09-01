Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E3F5CA0FF0
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 16:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgloCGKZPXkRzHGP3qWuScNjZlt3GHuZ15/4ajzzGfc=; b=H2aWX92azuF632
	6GvVhjdkhTyWvV5YVqORUMsnFb+SpHMjaEdPJRupIqJ6frCgJZygN0Wh6vSeaLuq2aPf7u1lTU0Eo
	Q4ZFAgsnmFrXuX7BCfP+3DGW343vtBVzAocJwTiK1ydpLmNgZn0kfC/0j5vPGOhCDOIGlGHNqTJ5p
	QSgon4HN0nqn3zCvpVrEAFsR3zIjT8mlKpUCROBO6iVJnPDtaIbBmPc6/OVXLZ4TG/VsSGmU/BJQl
	gQwJ207yE2xPYbN/90v/Tg6A6sGN3g2onKjAXWKLIJuv0VNQms07Z5ojMrtk/nd9xsyVU49JVyW+0
	Q9WzN54pFs2Dt9GYJysA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7VJ-0000000DGrw-02Im;
	Mon, 01 Sep 2025 16:35:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3ib-0000000CWL5-1Lpb
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 12:33:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B4ZXW002803
	for <linux-phy@lists.infradead.org>; Mon, 1 Sep 2025 12:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EB7F4mbxiHQX5qGhCQQlDNKpKVWf7VS3kp1B8SPd9Do=; b=TR+ed2qpL1UMcFGf
	c2LYRYswDisk5QfEcmEK8cdrYfIWWWnqNxjAjNGDTHk2kw4pT99AHy2DJpoyH0zw
	0wRIyxAyqebxwYZP5J6xOqCGBAU5sQe6XjgfyDZv4LHM5r6H5gOUN3Fs+LiCc1NC
	FENrX9MDHrVpkemQsZ5dnuNfj5zxS0L00bIg7tU7wsOYDMkwZhbfUahPg9yJrbPM
	uWu2ViZyYUenjHCGXUmIX+Vm1QNDdztFLAUkWDcnuB0V4Z+zg7EUBn0vIb+n1Jr7
	Y+xfLEUpNK6ExbYNoSmtjR/INenarXJg/cDuhRDrVwXKSSXEtWryBytQbVNlkW1G
	dTusaw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8rvvbe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 01 Sep 2025 12:33:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-245fbdc2546so14613845ad.0
        for <linux-phy@lists.infradead.org>; Mon, 01 Sep 2025 05:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756729983; x=1757334783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EB7F4mbxiHQX5qGhCQQlDNKpKVWf7VS3kp1B8SPd9Do=;
        b=nZZlXJViB2Q6kbptPl8pVDvzp5PNCJQKPeiVhdWECjO4lkupQj2tFh4+o0YnsfDNlR
         Mjuzha9jk542ZZJ1w2thUxlhuyhRogk8/tlIX58iDJVzi5A1prCN7Ec9NskQpLli8EoS
         Q8WO6Sw94uN12qRTWT+rsYlAGTgIpUb33EMdlhSujUKmeEr2bTYqgNYJyEosw/45vnF0
         K1YT6nl5TOAB7WYVbUGJ1M+a3a/e3j1xUOimUqSfVo/O+nsvkLURq5HOqvHYrGv4QdwF
         s8+aMveFmauX/NqdpKOZMOY6i/MzahXp0X1Cx+VnepsmGvETn1qRGjeGe2QQXypL5S5Z
         s5rA==
X-Forwarded-Encrypted: i=1; AJvYcCXM+1ba0oP6N32Qam6upkhqRG78gXZ0NKNXO+0eknG0KzovBOmxsQ3YqogrPmnti9DZGOEjiDziQhU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI4MQxemFIJjhLGtcR3rP1udW65Ujwrqo8wH7GkRYJz2+q92eN
	HhRkyoVqruQVTlU/P01yOCSwGv4soyxfIV2byIlnJgy2PxaS6ZgujSdgkMFAp1qQSejiQIO1qud
	qvcF+zQJJW8gKB7aWrz95JTawXtfznuXxe9YlhlhXe5GgMPhWALH7aTabNGemslr/zKeD
X-Gm-Gg: ASbGnctFaUg9nCHJDFPV0pTCD9ov1/KFz7K22fvJdc2dHQr5lSn3/Zeghr3x6oOGYOT
	iEnQOFiO3OMj2QEc9JEw1p8KqpjqhLWVofBDWerRkL8sLApxjj4QVvi/WVZ9iFk67oiRNTkpz5u
	DeVw+0Vcba0nLvD1JlrEgqf8livj66aMcSGkxtmpiyyLt76xOp3eFOi0D/KhANdXvG6OnZ1Y09d
	scnv+ktNLkJ3Dwy5NBXtvuu6VNH+hXTGFXsNHb/LYy5Z7R+CDoiUnZjh1OAjchJrVkF9x8V4JjF
	XIMkEjDHrLMCt2l0l2eFZAwsn8OauZDexpDHD72IalzK86Su4/kldQojNcRyxzzDSzLH6gndW4k
	P1IiSOUqSmnOklpJb/gC+JM666o24Hw==
X-Received: by 2002:a17:902:ea0e:b0:246:a152:2afc with SMTP id d9443c01a7336-2490f6e2a41mr89139405ad.3.1756729983496;
        Mon, 01 Sep 2025 05:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvdBSg+GSkVZYutloMzMAPl9JCliwrB8npGb8PaTRixqyTmb5uK1ODr7IHrQZgoOD9FV9l1A==
X-Received: by 2002:a17:902:ea0e:b0:246:a152:2afc with SMTP id d9443c01a7336-2490f6e2a41mr89138865ad.3.1756729982941;
        Mon, 01 Sep 2025 05:33:02 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-249066e1158sm104253735ad.144.2025.09.01.05.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 05:33:02 -0700 (PDT)
Message-ID: <75f8789d-9d97-49d9-97b0-908a5692c325@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 20:32:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
 <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
 <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX7rudd1o1MqBs
 kn19kOfcuAXVLtRYbo/wOfHXmeQwlkXqfZ/8utxEosGeaehVK6hP5uaZKtXKXyGUUrANUVuesNs
 /T4UvtV2WT03izpn0aFuJUrMbYXf/vXQqOmHRe/LHAg0/cLo9lV+yHgAFtaa/5esU61bqc6MlB5
 R33X3L/kv8LuROo5vK7IR9gRPEIE07X1PchK52Z9hzF+N9xhgxe7W1K+N3inACmow8rjHcGjyCw
 PLclssLbNQ8q8wuXUS9dpc+S51YgDfxgjYXzTf6kfl98fel2XB0UuxhmP7hwjvTh3v6InC9orfS
 JvsBOFtg6fB+h+yT/+4Lh4elSyxs7D18Wza8HoUE4yPlZVRAjwRuq/EpPBnWZMLPSO+fPnf6cgB
 /LTPHzMq
X-Proofpoint-GUID: Qeshh0QLhPUHpdPQRU5F3aBfYzKZdDwl
X-Proofpoint-ORIG-GUID: Qeshh0QLhPUHpdPQRU5F3aBfYzKZdDwl
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b59280 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ZffzQ4fVxSrCOw2gOQ0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_053305_391065_66BB3DD3 
X-CRM114-Status: GOOD (  21.21  )
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

Ck9uIDgvMjgvMjAyNSA3OjA1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIDI4LzA4
LzIwMjUgMDc6NTEsIFhpYW5neHUgWWluIHdyb3RlOgo+Pgo+PiBPbiA4LzIwLzIwMjUgNjoxOCBQ
TSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIFdlZCwgQXVnIDIwLCAyMDI1IGF0IDA1
OjM0OjQzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+IEFkZCBEaXNwbGF5UG9ydCBj
b250cm9sbGVyIGZvciBRdWFsY29tbSBTTTYxNTAgU29DLgo+Pj4+IFdoaWxlIFNNNjE1MCBjdXJy
ZW50bHkgc2hhcmVzIHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gYXMgU0M3MTgwLAo+Pj4+IGl0cyBo
YXJkd2FyZSBjYXBhYmlsaXRpZXMgZGlmZmVyLiBFeHBsaWNpdGx5IGxpc3RpbmcgaXQgZW5zdXJl
cyBjbGFyaXR5Cj4+Pj4gYW5kIGF2b2lkcyBwb3RlbnRpYWwgaXNzdWVzIGlmIFNDNzE4MCBzdXBw
b3J0IGV2b2x2ZXMgaW4gdGhlIGZ1dHVyZS4KPj4+IEkgYXNzdW1lLCBpdCBoYXMgbm8gTVNUIHN1
cHBvcnQuIEFtIEkgcmlnaHQ/Cj4+Cj4+Cj4+IMKgRnJvbSBzbTYxNTAgaXBjYXQsIEkgZm91bmQg
TVNULXJlbGF0ZWQgcmVnaXN0ZXJzIGFuZCBwaXhlbDEgY2xrwqBkZWZpbml0aW9uLgo+Cj4gVGhl
biBwbGVhc2UgZGVzY3JpYmUgTVNUIGFzIHRoZSBtYWluIGRpZmZlcmVuY2UgYmV0d2VlbiBTTTYx
NTAgYW5kIFNDNzE4MCAod2hpY2ggZG9lc24ndCBoYXZlIE1TVCkuCj4KPiBBbHNvIHRoaXMgbmVl
ZHMgdG8gYmUgcmViYXNlZCBvbiB0b3Agb2YgdGhlIE1TVCBiaW5kaW5ncy4gSSd2ZSBwaWNrZWQg
dXAgdGhlIGxhdGVzdCBwb3N0ZWQgcmV2aXNpb24sIGJ1dCBiYXNpbmcgb24gdGhlIG9uLWxpc3Qg
ZGlzY3Vzc2lvbiBJIG1pZ2h0IG5lZWQgdG8gZHJvcCBpdCBhbmQgcG9zdCBhbm90aGVyIGl0ZXJh
dGlvbi7CoAo+CgpXb3VsZCB5b3UgcHJlZmVyIEkga2VlcCB0aGUgY3VycmVudCBwYXRjaCBhbmQg
dXBkYXRlIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUKTVNUIGNhcGFiaWxpdHkgZGlmZmVyZW5jZSB3
aXRoIFNDNzE4MCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIG9yIHJlYmFzZSBvbgp5b3VyIHNlcmll
cyBhbmQgdXBkYXRlIHRoZSBkdC1iaW5kaW5nIGFjY29yZGluZ2x5PwpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNTA4MjktZHBfbXN0X2JpbmRpbmdzLXY3LTAtMmIyNjhhNDM5MTdiQG9z
cy5xdWFsY29tbS5jb20KClNpbmNlIE1TVCBzdXBwb3J0IGlzIG5vdCB5ZXQgbWFpbmxpbmVkIGlu
IHRoZSBEUCBkcml2ZXIsIGV2ZW4gaWYgSSByZWJhc2UKbm93LCB0aGUgZmluYWwgaW1wbGVtZW50
YXRpb24gbWF5IHJlcXVpcmUgcmVkZWZpbmluZyBtc21fZHBfZGVzYyBmb3IKU002MTUwIGluIGJv
dGggdGhlIGR0LWJpbmRpbmcgYW5kIHRoZSBkcml2ZXIgb25jZSBNU1QgbGFuZHMuCgoKPj4KPj4g
QWNjb3JkaW5nIHRvIHRoZSBoYXJkd2FyZSBzcGVjLCBNU1QgaXMgc3VwcG9ydGVkLCBidXQgZHVl
IHRvIGxpbWl0YXRpb25zIGluIGNsb2NrIGFuZCBwaXBlIHJlc291cmNlcywKPj4KPj4gdGhlIG1h
eGltdW0gY29uY3VycmVuY3kgY2FwYWJpbGl0eSBpcyByZXN0cmljdGVkIHRvIDE5MjB4MTIwMEA2
MCArIDEyODB4NzIwQDYwLgo+Pgo+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4
aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwgfCAx
ICsKPj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAt
Y29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4+IGluZGV4IDk5MjNiMDY1MzIzYmJhYjk5ZGU1
MDc5YjY3NGEwMzE3ZjMwNzQzNzMuLjk5NmQwMTMyZTA4NGQ0MDFkYjg1MDE0YTFhNGU0NDVkMDBk
NjJlZDggMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwKPj4+PiBA
QCAtMjcsNiArMjcsNyBAQCBwcm9wZXJ0aWVzOgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSBxY29tLHNjODI4MHhwLWRwCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2M4
MjgweHAtZWRwCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2RtODQ1LWRwCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc202MTUwLWRwCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIHFjb20sc204MzUwLWRwCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IHFjb20sc204NjUwLWRwCj4+Pj4gwqDCoMKgwqDCoMKgwqAgLSBpdGVtczoKPj4+Pgo+Pj4+IC0t
wqAKPj4+PiAyLjM0LjEKPj4+Pgo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
