Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C08BCA0FE9
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 08:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYppEvzghmI1Bd7G0wKbgeVFdo/ggB1NmA6mGWc43QE=; b=2GeQrVftFWfg2M
	BPX4r7G0aYuUe3ugHihJjm6GlhfzH2M0xlRenrGXsWWn64wBZV/7r6ZZAajNW5bpIVbMH41cKXzhl
	jreVS1sBRYTHlnHWsJ0GXFk/2AoDl1vyIQhAXn9LEXdY/Z/iYPLHbnU3xxJYR9vw0l1d4jYQuuoOI
	Nej85E/rJVLLkOX6SYlkVQhnqOfxqznVvD3pJ+O4pfAEVUTQIrlINd+kUqiGLTJrlrYDtTg9wVWPN
	gtSDjA2zV94d3k4zS+HZs1xtzzP1YVHVsfFrnGqu5hMW8pzWrsSbDujo2COLCiueVh5u8C3p6wG6d
	tAbNOovYH3F4UQnSLmag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpM3-0000000B69C-1BXD;
	Tue, 26 Aug 2025 08:48:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpDr-0000000B3eQ-1bV3
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 08:40:09 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q4wOh5027329
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 08:40:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9ZzBwPQpsFm5dOpqRIWUvHHP01zFw0ebgHPUha5E/DY=; b=k6Q/yNoJIikDIO/9
	5ZhlsK16bE9KEph72O3PEOvWqU0nt4xcUl4N+XIYuJUfaJy3CZboulsq8Pk98i/N
	8OZRUfbpIDYQVlGDDhHTtVyZFjCodvmOOgYp/BvSOMzAACIZVWx4fkrT77WYqkQd
	vZ6EJ2kpOIl/mseEMvI2Q4E4NLz1Qop0y0LMFTwHcqO9ThnjUxQaH1bluaYE1NXh
	cqG7PGa4bz0sDPpOxXcSX6a2DyUda6lFBsQeh5DQ408FU+2MKP9Aon8roI3m6k6a
	1zim5/VsW5m8+3Akx+V0Pj5juxCzvv35WUn7YB9MroT2U/vp0xGaiD4pH5iWahJc
	we4p9g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unqyua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 08:40:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244582bc5e4so66806715ad.2
        for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 01:40:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756197604; x=1756802404;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ZzBwPQpsFm5dOpqRIWUvHHP01zFw0ebgHPUha5E/DY=;
        b=tUHunYyq3svlzUgrTKw6QfjVVkkPdyTYZlb+jyQnhbUNGTiNRDIR4Pn+MODaALnGu2
         PPnMZRdx3Mu/WctTz3rt5yGILbYMW8P2dIAKjQ1VObONIJITZ7tx5rX3pgoiizKZAGbN
         iAQLB8LraK0Gn8nKPJ8EyuMBSdDJd2aO5sy5d9EweJBvS4xJM9nJcgGUDBlMnFrif9D4
         z9KyrMz75HshPTxyslVp1DKdN3JQYTyR2BOpA1/E9sjBNMYVbviHIEGT1juIPPlDloNZ
         KOXeNJKGXXF/W1QDa69wMINlH7UEQ1NYrObMi3jDeBjn1csNdL1PLpjZG9eZiSVXXf75
         Kjug==
X-Forwarded-Encrypted: i=1; AJvYcCU5pB+7eVYMMUFEtHHJA6uwLD2XbCHUCcCp0CSKKOleeCoa7yt7rfYE1+uYJIEFCk0stylf7X3XEB4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq0HrE/1WTQfi3bIydZSTuJzE4X5USU4A0mpervTohEEMbca01
	x1dink8KCWKT/2Q+RBGDxd8cg48yOglxSFEgl6cSKOR2azNRcbVLNz3PNSnzg7CGwxhC5lU3ehi
	PILeNZz90i0/XVQI1kEUGV0PUwItX4htehD7ZKxTVQvyV0YxfL8fSg1uIX3PBpYpDolEY
X-Gm-Gg: ASbGncvz8oMMdg3Qml/2/rJS3ptgxI9m2awIt0560Q3iz2E8LUy9sRrAZOqbsBqDWZv
	qwe4XdNA4Y2HQAFClYNUkU2shov3cITnjdEGXSOFb06dSmhg6DQ0tlh4DIfBU9DwQMyhoh2Xjj/
	2bmNxSa6RSAZRb7HcILTLDgVpDeJ2ky8oy2FZaKVksWxGypxKEpw+/XFSv8Lx7pCXNr70kDTD3q
	ZvYU116lNBERUoa4m/mafQOBrsEMKOJvPpEMckfxcWzpeN+IF41gcQ3wyQAY08f+dVDcFW9orE/
	+87eAmXtQFRePYffrw4q5g2qKkbNOdv/xFGHe7smYP1VmiHTcHs/ZbPRO6PbHYHmiSwsaLDjc7v
	zeQg8LkEw
X-Received: by 2002:a17:903:37c4:b0:246:76da:80ea with SMTP id d9443c01a7336-24676da82b5mr136669435ad.30.1756197604126;
        Tue, 26 Aug 2025 01:40:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFps5spYMgMSBOykW3IsGvhVvZ5qGTh7lw6hM84N5G9hXec38uZg+X3bGMa48Hor3TRcNwCfw==
X-Received: by 2002:a17:903:37c4:b0:246:76da:80ea with SMTP id d9443c01a7336-24676da82b5mr136669095ad.30.1756197603599;
        Tue, 26 Aug 2025 01:40:03 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688645e1sm89184635ad.79.2025.08.26.01.40.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 01:40:03 -0700 (PDT)
Message-ID: <8753d857-5d72-493b-8c39-8caa84e0ba16@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 14:09:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom-qmp-usb: fix NULL pointer dereference in PM
 callbacks
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
 <20250825-qmp-null-deref-on-pm-v1-1-bbd3ca330849@oss.qualcomm.com>
 <sxqgnmj4bawj7n6kan7tiutb5ynhxz6cgbtpbz2xx4ixodtdw6@q2ftbnpjouvb>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <sxqgnmj4bawj7n6kan7tiutb5ynhxz6cgbtpbz2xx4ixodtdw6@q2ftbnpjouvb>
X-Proofpoint-GUID: Ubyuuoi--ZhNpRnAEHm-1YcK73PfWwmi
X-Proofpoint-ORIG-GUID: Ubyuuoi--ZhNpRnAEHm-1YcK73PfWwmi
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68ad72e6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=5K2DVmaXFLzhwRWEU4gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfXxx8SZ0AVb9Jc
 BvGbUT5l1TWZtdq5ySJRicMPc6xZ7WeXLR2daPtBLXX7VpVkfETYqMCDFZYjHQIXqjOOcWX4K+u
 l+dhBKqRnMtKuod5Os7RwVHxZ5rQuA6Ixr51bFEktH013KxVJePVUZf4kpVweZoagT2cWUHVQUI
 Vvzy8W9loktgsn62TB1157+gx1Q2xC5J/RNIktHYkH+jRIusSvkSUDN5WYV2JCb4MzTkHQKv9At
 /EC5QJRUDnYgfkhyX8TSbln3ZTt0E1d9v7YjzyDYtMsg+vNoUD1CqElUVmKElhdF74CVOo63u0W
 pJBWvXACcYg2NcV8VEK7PjWjyGVE+7aGbFeNrfvxyfxy6U1aRPCH592bEb1LImnjpekWuKR5dyI
 jCRw11Jn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_014007_543599_C1CB7D09 
X-CRM114-Status: GOOD (  28.34  )
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

Ck9uIDgvMjYvMjAyNSA4OjIwIEFNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gT24gTW9uLCBB
dWcgMjUsIDIwMjUgYXQgMDU6MjI6MDJQTSArMDUzMCwgS2F0aGlyYXZhbiBUaGlydW1vb3J0aHkg
d3JvdGU6Cj4+IEZyb206IFBvb3ZlbmRoYW4gU2VsdmFyYWogPHF1aWNfcG9vdmVuZGhAcXVpY2lu
Yy5jb20+Cj4+Cj4+IFRoZSBwbSBvcHMgYXJlIGVuYWJsZWQgYmVmb3JlIHFtcCBwaHkgY3JlYXRl
IHdoaWNoIGNhdXNlcwo+PiBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSB3aGVuIGFjY2Vzc2lu
ZyBxbXAtPnBoeS0+aW5pdF9jb3VudAo+PiBpbiB0aGUgcW1wX3VzYl9ydW50aW1lX3N1c3BlbmQu
Cj4+Cj4gSG93IGRvZXMgdGhhdCBoYXBwZW4/IERvIHdlIGVuZCB1cCBpbiB0aGUgZXJyb3IgcGF0
aCBpbmJldHdlZW4gdGhlCj4gZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpPyBPciBkb2VzIGl0IGhh
cHBlbiBieSBzb21lIG90aGVyIG1lYW5zPwoKCnFtcF91c2JfcHJvYmUoKSBpcyBzY2hlZHVsZWQg
b3V0IHBlciB0aGUgYmVsb3cgc3RhY2sgKGNvbGxlY3RlZCBmcm9tIHRoZSAKUkFNIGR1bXApLAoK
ClN0YWNrIHRyYWNlIG9mIHRoZSBrbW9kbG9hZGVyIHByb2Nlc3M6CiDCoCDCoCBbPDB4NDA4ZGVm
ODg+XSBfX3NjaGVkdWxlKzB4MzQ4LzB4NTVjCiDCoCDCoCBbPDB4NDA4ZGYxZjg+XSBzY2hlZHVs
ZSsweDVjLzB4OTgKIMKgIMKgIFs8MHg0MDUyYzMxOD5dIHJwbV9yZXN1bWUrMHgxNTAvMHg0MDQK
IMKgIMKgIFs8MHg0MDUyZDRlND5dIHBtX3J1bnRpbWVfZm9yYmlkKzB4NTQvMHg2MAogwqAgwqAg
WzwweDYyOWM0N2YwPl0gcW1wX3VzYl9wcm9iZSsweDNjNC8weDVkMCBbcGh5X3Fjb21fcW1wX3Vz
Yi5rb10KCiBGcm9tIHRoZSBhYm92ZSBzbmlwcGV0LCB3ZSBjYW4gc2VlIHRoYXQgdGhlIHBoeS1j
cmVhdGUgaGFzIG5vdCBoYXBwZW5lZCAKeWV0IGFzIHRoZSBwcm9iZSBpcyBzdGlsbCBpbiBwbV9y
dW50aW1lX2ZvcmJpZCgpIGFuZCBxbXAtPnBoeSBpcyBOVUxMLiAKTWVhbndoaWxlLCBxbXBfdXNi
X3J1bnRpbWVfc3VzcGVuZCgpIGlzIGNhbGxlZCwgY2F1c2luZyB0aGUgTlVMTCBwb2ludGVyIApk
ZS1yZWZlcmVuY2UgaXNzdWUuIFNpbmNlIHRoZSBpc3N1ZSBpcyBub3QgZWFzaWx5IHJlcHJvZHVj
aWJsZSwgd2UgYXJlIApub3QgYWJsZSB0byBmaW5kIG91dCB3aG8vd2h5IHRoZSBzdXNwZW5kIHdh
cyBjYWxsZWQuCgoKPgo+IFRoaXMgd291bGQgYmUgcXVpdGUgdXNlZnVsIGluZm9ybWF0aW9uIGZv
ciBvdGhlcnMgdG8ga25vdyBpZiB0aGV5IGhpdAo+IHRoZSBzYW1lIG9yIGp1c3QgYSBzaW1pbGFy
IHByb2JsZW0uCj4KPj4gU28gaWYgcW1wLT5waHkgaXMgTlVMTCwgYmFpbCBvdXQgZWFybHkgaW4g
c3VzcGVuZCAvIHJlc3VtZSBjYWxsYmFja3MKPj4gdG8gYXZvaWQgdGhlIE5VTEwgcG9pbnRlciBk
ZXJlZmVyZW5jZSBpbiBxbXBfdXNiX3J1bnRpbWVfc3VzcGVuZCBhbmQKPj4gcW1wX3VzYl9ydW50
aW1lX3Jlc3VtZS4KPj4KPj4gQmVsb3cgaXMgdGhlIHN0YWNrdHJhY2UgZm9yIHJlZmVyZW5jZToK
Pj4KPj4gWzw4MTgzODFhMD5dIChxbXBfdXNiX3J1bnRpbWVfc3VzcGVuZCBbcGh5X3Fjb21fcW1w
X3VzYl0pIGZyb20gWzw0MDUxZDFkOD5dIChfX3JwbV9jYWxsYmFjaysweDNjLzB4MTEwKQo+PiBb
PDQwNTFkMWQ4Pl0gKF9fcnBtX2NhbGxiYWNrKSBmcm9tIFs8NDA1MWQyZmM+XSAocnBtX2NhbGxi
YWNrKzB4NTAvMHg1NCkKPj4gWzw0MDUxZDJmYz5dIChycG1fY2FsbGJhY2spIGZyb20gWzw0MDUx
ZDk0MD5dIChycG1fc3VzcGVuZCsweDIzYy8weDQyOCkKPj4gWzw0MDUxZDk0MD5dIChycG1fc3Vz
cGVuZCkgZnJvbSBbPDQwNTFlODA4Pl0gKHBtX3J1bnRpbWVfd29yaysweDc0LzB4OGMpCj4+IFs8
NDA1MWU4MDg+XSAocG1fcnVudGltZV93b3JrKSBmcm9tIFs8NDAxMzExZjQ+XSAocHJvY2Vzc19z
Y2hlZHVsZWRfd29ya3MrMHgxZDAvMHgyYzgpCj4+IFs8NDAxMzExZjQ+XSAocHJvY2Vzc19zY2hl
ZHVsZWRfd29ya3MpIGZyb20gWzw0MDEzMWQ0OD5dICh3b3JrZXJfdGhyZWFkKzB4MjYwLzB4MmU0
KQo+PiBbPDQwMTMxZDQ4Pl0gKHdvcmtlcl90aHJlYWQpIGZyb20gWzw0MDEzODk3MD5dIChrdGhy
ZWFkKzB4MTE4LzB4MTJjKQo+PiBbPDQwMTM4OTcwPl0gKGt0aHJlYWQpIGZyb20gWzw0MDEwMDEz
Yz5dIChyZXRfZnJvbV9mb3JrKzB4MTQvMHgzOCkKPj4KPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcgIyB2Ni4wCj4+IEZpeGVzOiA2NTc1M2YzOGY1MzAgKCJwaHk6IHFjb20tcW1wLXVzYjog
ZHJvcCBtdWx0aS1QSFkgc3VwcG9ydCIpCj4gSGFzIHRoaXMgYmVlbiBhIHJlcHJvZHVjaWJsZSBp
c3N1ZSBmb3IgbGFzdCAzIHllYXJzPyBJIHRoaW5rIHRoZSBmaXhlcwo+IG1ha2VzIHNlbnNlIGlu
IHRoYXQgaXQgaW50cm9kdWNlZCB0aGUgaW5kaXJlY3Rpb24sIGJ1dCB3aGVuIGRpZCB0aGUKPiBp
c3N1ZSBhY3R1YWxseSBzaG93IHVwPwoKCkFmdGVyIG1pZ3JhdGluZyB0aGUgUVNESyBMaW51eCBm
cm9tIDUuNCB0byA2LjYsIHdlIGFyZSBzdGFydGVkIHNlZWluZyAKdGhpcyBpc3N1ZSByYW5kb21s
eS4gV2UgZGlkbid0IGhhZCBhIGNoYW5jZSB0byB0ZXN0IGluIHRoZSBvdGhlciBrZXJuZWwgCnZl
cnNpb25zLgoKCj4KPiBSZWdhcmRzLAo+IEJqb3JuCj4KPj4gU2lnbmVkLW9mZi1ieTogUG9vdmVu
ZGhhbiBTZWx2YXJhaiA8cXVpY19wb292ZW5kaEBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogS2F0aGlyYXZhbiBUaGlydW1vb3J0aHkgPGthdGhpcmF2YW4udGhpcnVtb29ydGh5QG9zcy5x
dWFsY29tbS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11c2IuYyB8IDQgKystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtdXNiLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiLmMK
Pj4gaW5kZXggZWQ2NDZhN2U3MDViYTMyNTk3MDg3NzVlZDVmZWRiYmJhZGExMzczNS4uY2QwNGU4
ZjIyYTBmZTgxYjA4NmIzMDhkMDI3MTMyMjJhYTk1Y2FlMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11c2IuYwo+PiBAQCAtMTk0MCw3ICsxOTQwLDcgQEAgc3RhdGlj
IGludCBfX21heWJlX3VudXNlZCBxbXBfdXNiX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNl
ICpkZXYpCj4+ICAgCj4+ICAgCWRldl92ZGJnKGRldiwgIlN1c3BlbmRpbmcgUU1QIHBoeSwgbW9k
ZTolZFxuIiwgcW1wLT5tb2RlKTsKPj4gICAKPj4gLQlpZiAoIXFtcC0+cGh5LT5pbml0X2NvdW50
KSB7Cj4+ICsJaWYgKCFxbXAtPnBoeSB8fCAhcW1wLT5waHktPmluaXRfY291bnQpIHsKPj4gICAJ
CWRldl92ZGJnKGRldiwgIlBIWSBub3QgaW5pdGlhbGl6ZWQsIGJhaWxpbmcgb3V0XG4iKTsKPj4g
ICAJCXJldHVybiAwOwo+PiAgIAl9Cj4+IEBAIC0xOTYwLDcgKzE5NjAsNyBAQCBzdGF0aWMgaW50
IF9fbWF5YmVfdW51c2VkIHFtcF91c2JfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2
KQo+PiAgIAo+PiAgIAlkZXZfdmRiZyhkZXYsICJSZXN1bWluZyBRTVAgcGh5LCBtb2RlOiVkXG4i
LCBxbXAtPm1vZGUpOwo+PiAgIAo+PiAtCWlmICghcW1wLT5waHktPmluaXRfY291bnQpIHsKPj4g
KwlpZiAoIXFtcC0+cGh5IHx8ICFxbXAtPnBoeS0+aW5pdF9jb3VudCkgewo+PiAgIAkJZGV2X3Zk
YmcoZGV2LCAiUEhZIG5vdCBpbml0aWFsaXplZCwgYmFpbGluZyBvdXRcbiIpOwo+PiAgIAkJcmV0
dXJuIDA7Cj4+ICAgCX0KPj4KPj4gLS0gCj4+IDIuMzQuMQo+PgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
