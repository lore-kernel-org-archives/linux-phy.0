Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBA9C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dogaXHpmKj4HFyISnhY+dm7rDobwc7kGYCgGk9c+Oyg=; b=2oIFgPuFm6Yqze
	lau4iFEqFmomqYEk+/nzyXWdCm4Xu764H2gh71uBf8zpz3MuXpwS9aFYEknPjybKC/eZ3GAcPmVNT
	SkQeKgbGBPJxAlgdy4C2vcc3SjLzcRzR9rJ/PDqQGZddOgpUHVV506WwfeTbxEO53Qtq36XsITTND
	To/+j13dHgu9vwB298MLm3Ad74d2cMZGYWBx8JSP6FMxiSqc0Hf/cAlL2Uy7RGYTLVfOQ53J+ahc+
	qntOXbB8au1w5bGU9lrGJjmpxnBvvvBhukdwmKoSUVyOFb9+vV478Zl3JVBUoCamvGKxJSbQB4+7W
	7RooIqsgnG3f0YbrC81w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAU-00000009U3d-2FPj;
	Tue, 21 Jul 2026 13:05:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAS-00000009U2c-0Pq9
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:05:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LARMQw945800
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+wR0wRMni/+0ARfdzMaqeG
	qZmKzox5EW4BI4JkyGp08=; b=cHGpSNvGvkgGCX9PKa1XkTgx4NeOeK0t9e9NPQ
	9moMyGtv5iea+jwQu4CIvKXcAoOqTU3MHJdVmlWTZrBAa9Amw6xYGLcufqyV5lRz
	fnuED3TSnSi3/TT52SqFiqoKRxJXAf7uJ3fMu/7rb0aB7NB7R19IxOaVPNrIB0sw
	Uhk7Z6fAmCw+ac6+XTffVqiXUu+V1IWTgETTCnPDAisZ4PniaoiqpRaAp6FAdA05
	GVovARlhgKgKbFdr4iqUXVqhJeunuUdhPzN+eV8ZYs2xEc77/jM3e57/+X2F+YMr
	Jlz7FqdcGXPYJCkA6F2QshfibqtegdAntypifepDyJIsCBtw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj1es2frb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:50 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-74ac10b9862so135301137.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639150; x=1785243950; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=+wR0wRMni/+0ARfdzMaqeGqZmKzox5EW4BI4JkyGp08=;
        b=dkiVSr6g07MUURi23zM9vxo7skoFHq4k51uguvHCdxdOMOKgjgJGsOhYHjXLJ+P3MR
         oKdelYiBOSSGNXkp8Q6Pe0ALZWFJPguSghAZ+/YLZsYG4Oc4mtbf6nJi4d4GuhOFmiDU
         jX3kJj219FsrGGboXQaUsIR9+KX4252tdMvdNnmCG0xMSZV1O9txLJly3EybtN9bZcBY
         5lYl+jhZASqZJHweYS1lff20YOjOK1ikSAtUy8V2ir84zqq147PwIpVKGUuMDvkcnpJh
         U7mwreI22YlhgdDHiAhvMeUl9XN3BMD/1Yv/jHjrxaCSPfNcCq8ytQ/MDCCfyyRUJZSd
         fbDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639150; x=1785243950;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+wR0wRMni/+0ARfdzMaqeGqZmKzox5EW4BI4JkyGp08=;
        b=gHd9cR4ZTkpKlnk5Ld+VwDx0zQJgbe2izYkx8t2A92jmQ/cDoqv3f+qp4U5yPv5WJi
         m0iJH3hJYhVWupRJMcM/K96R1aWxHruqeMt9LtiZaD7pZTNDum/8vbjbHy6tfoS1F9R+
         MhxQaUpsTvJA+Lb2aREz4LiAz81xbvffkE36VMAUIpOB8Muh3tdKde86fUAWNuRNEMlF
         J0QqjGEWaWB0U0VhO00E2chhDfQyprOsqalx5R2fRUXciCB3ksdpKXT3vu2Fs6MsbKJy
         kFyMNm+8F/FkZBo+b9TmneM9Iy2yRJZ1kcIxuEGGlq6rWgLUtmA5Fvb2tGcFTh5xo6yG
         iexQ==
X-Forwarded-Encrypted: i=1; AHgh+RruY6MvGZKz3CLZpEIN8+Z3p/6FFTMKEvdACKlaCa8QjIhnCd8SEMq5LCBAsI/J+yTEz7yi7lh1Suc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYaQMz6CIDMA0NBmWQqFJQYC3VLHct1hQNZbVpGOanSEIUR6QP
	381uJbAhz+xG0lgZEtYwilRyaddgyfEEsgyS1DxCme5IrGw/48SKSNOPGY7zH9Y3gvTp6wu5G/E
	cBScbA2GDPYEV8mT+iomAb1VBz7LKw+nOOIYFpdC+gb4TIDOVym2+Lx78tRhV39kF5Qtf
X-Gm-Gg: AR+sD12OucAYpG+2seAad8LA5l5b6GgPHgF6YEu/XKZVjQnKWLNE/UQrrSQzKvqVWLe
	2AIfZiEmzgjhrKDgpgw2BxkOJZ2yJiccLRmJDwbYUZfA1tSsPOBpdIa7QOy0JxRrksO/oHG0aJl
	4hO7G+n2rL6SC+EA1duni59taO0YhhntuOkTkLUTPqtdidr742BIlvZBHpR1hoNoBlajssULlV0
	b2i9oSI0FtTNOizxNqFZzr595Zw94IC+C6GEjlcxcPqFEjuYDi23dzGDvWdBmxHc3y+wVvFsbVB
	m5Ro8xqIZ4MNZEaDIV49SYcnglKK+ADMO2B5B2vgpmmYC/mjIgeWTetM1iSIbMYBeDyJDF/eHyw
	0vryGhLvGFmUjKgYo20HuOUMlsfLp6sgZ0X5XTN1zPeNd0tAeglFNIXsj+WKIv9ME839GB4Ng62
	gJJEeY9qcrRVjvB4mSzR8rtViZMweglSGFvgQ4g5GL9/s+IkLpWvY=
X-Received: by 2002:a05:6102:918:b0:726:cd42:d023 with SMTP id ada2fe7eead31-747534ce270mr4963597137.11.1784639149611;
        Tue, 21 Jul 2026 06:05:49 -0700 (PDT)
X-Received: by 2002:a05:6102:918:b0:726:cd42:d023 with SMTP id ada2fe7eead31-747534ce270mr4963555137.11.1784639149039;
        Tue, 21 Jul 2026 06:05:49 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:48 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v5 0/5] phy: qcom: Fix possible NULL-deref and runtime PM
 race conditions
Date: Tue, 21 Jul 2026 15:05:44 +0200
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKhuX2oC/4WOQQ6CMBBFr0K6dpqhFFBX3sOwqNBKk0qhBSIh3
 N2BjQsXbn7yMvlv/sqiDlZHdk1WFvRso/UdQX5KWN2q7qnBNsRMoCiwFAhD7V8wxQf07QLGvqG
 bnANj8FKavGhSLRl1+6DpdnjvFbEJ1BrboNXXJjBPKSXyUp6zMoUUnLc17/3klO1uPkY+TMrRw
 xen2L2tjaMPyzF3lrv937JZAoJshEKDRZNn6tdbbdv2ASmgSWgJAQAA
X-Change-ID: 20260720-qcom-usb-phy-fix-null-ff097f56d1e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=SPZykuvH c=1 sm=1 tr=0 ts=6a5f6eaf cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=JfrnYn6hAAAA:8
 a=9gNpWytEGD6O0ATn_e0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: eKwqieqJoOeYFoC3ZbVu6Fa95s0gxVXp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfXw3zEq/OYC36u
 pH5zdxKfBGBQoW8Hk6naoFR2p8zBtMh8oDS43T/xEhje1gcLJmJVJNfPzLsb3PvClqzL2ThtF1s
 vbZJzTzMnzy1g53YRsk3AvQgp/ZY8QCtPQEECLE803IsIUyDf0tsIZhKLv+eEg9Ia23ishWLdCO
 jFOqP8EtfiwdZ6TKjTWxTwgRjJIjYntfMmZ3S4laooRqGNcShXaQz58oaISJvnCUlLgijA2Hg6h
 vRef3iITHf6yYoqu34MxZpq+HTNlRT7WTJZzpfc0YZr+NyN2hqg6/leUl24Bk4oB2DOhrQGbYrt
 dEAK2atRhFoCRrZoJ3+JTRbslTUq1Kt1Ad1e6qPR1OiB3JnZDz9tNDK6a8v4xLo49xLWiW+qzia
 amdkKNiK8CZlO+UmwQbCWVbrHMyfLx/s5Zv1so/KvWLu9AtvmHFAQwmIayhQ1NkXI5UdPx9+ZbO
 VaKIIuAHOGMgUTB9o4A==
X-Proofpoint-ORIG-GUID: eKwqieqJoOeYFoC3ZbVu6Fa95s0gxVXp
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfXy4iTh9GsUheF
 yayUzgyZVgbD0VmVzOqSKXCaszKQLPzLtKDYRhqxjsd3AdT4JE3mrkRCgrwckAAyt4CikmR9Y6r
 JESispXsBJkeU1ui7LzfHrguZQW9FOY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 clxscore=1015 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060552_143844_0EE4B0D5 
X-CRM114-Status: GOOD (  15.65  )
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

QWRkcmVzcyBwb3RlbnRpYWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlcyBhbmQgcmFjZSBjb25k
aXRpb25zIHJlbGF0ZWQKdG8gcnVudGltZSBQTSBpbiBzZXZlcmFsIFF1YWxjb21tIFBIWSBkcml2
ZXJzLiBJbiBhbGwgY2FzZXMsIGVuYWJsaW5nCnJ1bnRpbWUgUE0gYmVmb3JlIHRoZSBQSFkgaW5z
dGFuY2UgaXMgZnVsbHkgaW5pdGlhbGl6ZWQgY2FuIGxlYWQgdG8KY3Jhc2hlcyBkdXJpbmcgZWFy
bHkgcnVudGltZSBzdXNwZW5kIGNhbGxiYWNrcy4KCi0gQXR0YWNoIGRyaXZlciBkYXRhIGJlZm9y
ZSBlbmFibGluZyBydW50aW1lIFBNLgotIEludHJvZHVjZSBpbml0aWFsaXphdGlvbiBmbGFncyB3
aGVyZSBuZWVkZWQgdG8gYXZvaWQgZGVyZWZlcmVuY2luZwp1bmluaXRpYWxpemVkIHBvaW50ZXJz
LgotIFJlb3JkZXIgcG1fcnVudGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSBj
YWxscyB0byBwcmV2ZW50CnVubmVjZXNzYXJ5IHN1c3BlbmQvcmVzdW1lIGN5Y2xlcyBkdXJpbmcg
ZHJpdmVyIHByb2JlLgotIFVzZSBkZXZyZXMtbWFuYWdlZCBQTSBydW50aW1lIGhlbHBlcnMgZm9y
IHByb3BlciBjbGVhbnVwLgoKV2h5IGl0IGhhcHBlbnM/CgpUaGUgUEhZIGlzIGEgc3VwcGxpZXIg
b2YgdGhlIFVTQiBkZXZpY2UuIEEgVVNCIGRldmljZSBjYW5ub3QgYmUgcHJvYmVkCnVudGlsIGFs
bCBpdHMgc3VwcGxpZXJzIGFyZSByZWFkeS4gQXMgbG9uZyBhcyB0aGUgUEhZIGlzIG5vdCByZWFk
eSwgdGhlCmRldmljZSBjb3JlIGtlZXBzIHJldHJ5aW5nIHRoZSBwcm9iZSwgd2hpY2ggZmFpbHMg
d2l0aCAtRVBST0JFX0RFRkVSLgoKQXQgc29tZSBwb2ludCB0aGUgUEhZIHByb2JlIGZpbmFsbHkg
cnVucywgYnV0IHRoZSBkZXZpY2UgY29yZSBtYXkgc3RpbGwgYmUKYXR0ZW1wdGluZyB0byBwcm9i
ZSB0aGUgVVNCIGRldmljZSBjb25jdXJyZW50bHkuCiAKSW5zaWRlIF9fZHJpdmVyX3Byb2JlX2Rl
dmljZSgpLCB3ZSBoYXZlOgoKICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7CiAgICBw
bV9yZXF1ZXN0X2lkbGUoZGV2KTsKCiAgICBpZiAoZGV2LT5wYXJlbnQpCiAgICAgICAgcG1fcnVu
dGltZV9wdXQoZGV2LT5wYXJlbnQpOwoKICAgIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycyhkZXYp
OwogICAgcmV0dXJuIHJldDsKClRoaXMgbWVhbnMgdGhhdCB3aGVuZXZlciBhIFVTQiBwcm9iZSBh
dHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFuCmVycm9yIG9yIG5vdCwgaXRzIHN1cHBs
aWVycyBhcmUgcmVsZWFzZWQgdmlhIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpLgpSZWxlYXNp
bmcgc3VwcGxpZXJzIG1heSBpbiB0dXJuIHRyaWdnZXIgYSBydW50aW1lIHN1c3BlbmQuCiAKSW4g
b3VyIGNhc2UsIHNpbmNlIHRoZSBQSFkgaXMgYSBzdXBwbGllciBvZiB0aGUgVVNCIGRldmljZSwg
dGhlIFVTQiBjb3JlCmtlZXBzICdsb29waW5nJyBpbiBfX2RyaXZlcl9wcm9iZV9kZXZpY2UoKSBy
ZXR1cm5pbmcgLUVQUk9CRV9ERUZFUiB1bnRpbAp0aGUgUEhZIGJlY29tZXMgcmVhZHkuIEFzIGEg
cmVzdWx0LCBwbV9ydW50aW1lX3B1dF9zdXBwbGllcnMoKSBtYXkgcnVuCmNvbmN1cnJlbnRseSB3
aXRoIHRoZSBQSFkncyBwcm9iZSBmdW5jdGlvbi4gSWYgdGhpcyBoYXBwZW5zIGFmdGVyCnJ1bnRp
bWUgUE0gaGFzIGJlZW4gZW5hYmxlZCBmb3IgdGhlIFBIWSwgYnV0IGJlZm9yZSB0aGUgZHJpdmVy
IGhhcwpmb3JiaWRkZW4gc3VzcGVuZCBvciB0YWtlbiBhIFBNIHJlZmVyZW5jZSwgdGhlIFBIWSBt
YXkgZW5kIHVwIGJlaW5nCnJ1bnRpbWUtc3VzcGVuZGVkICd1bmV4cGVjdGVkbHknCgotLS0KQ2hh
bmdlcyBpbiB2NToKLSBSZS1pbnRyb2R1Y2UgcGh5OiBxY29tOiBxbXAtdXNiLWxlZ2FjeTogRml4
IHBvc3NpYmxlIE5VTEwtZGVyZWYgKHNhc2hpa28pCi0gTGluayB0byB2NDogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI2MDcyMC1xY29tLXVzYi1waHktZml4LW51bGwtdjQtMC00ZDJhMGYw
NmQ1M2FAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdlcyBpbiBWNDoKLSBJbnN0ZWFkIG9mIG1vdmlu
ZyBwbS9mb3JiaWQsIGluY3JlbWVudCB0aGUgcG0gdXNhZ2UgY291bnRlciBiZWZvcmUKICBlbmFi
bGluZyBydW50aW1lIHBtIGFuZCBkZWNyZW1lbnQgaXQgYWZ0ZXIgdGhlIFBIWSBoYXMgYmVlbiBj
cmVhdGVkLiAoSm9oYW4pCi0gRHJvcCBub3cgdW5uZWNlc3NhcnkgZGV2X3NldF9kcnZkYXRhKCkg
bW92ZSBpbiBzbnBzLWZlbXRvLXYyCi0gRHJvcCA0LzUgKHFtcC11c2ItbGVnYWN5OiBQcmV2ZW50
IHVubmVjZXNzYXJ5IFBNIHJ1bnRpbWUgc3VzcGVuZCBhdCBib290KQogIHdoaWNoIGlzIG5vdCBy
ZXF1aXJlZCBhbnltb3JlLiAKLSBSZWJhc2UKLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNjAyMDUxNjAyNDAuNzQ4MzcxLTEtbG9pYy5wb3VsYWluQG9zcy5xdWFs
Y29tbS5jb20vCgpDaGFuZ2VzIGluIHYzOgpSZWJhc2Ugb24gbmV4dCBhbmQgcmVtb3ZlIDIvNiAo
b2Jzb2xldGUpCgpDaGFuZ2VzIGluIHYyOgpTcGxpdCBwYXRjaGVzIDIvNCBhbmQgMy80IHNvIHRo
YXQgdGhlIG51bGzigJFwb2ludGVyIGRlcmVmZXJlbmNlIGZpeCBhbmQKdGhlIHJ1bnRpbWXigJFQ
TSBlbmFibGUvZm9yYmlkIHJlb3JkZXJpbmcgYXJlIGxvZ2ljYWxseSBzZXBhcmF0ZWQuCgpMb2lj
IFBvdWxhaW4gKDQpOgogIHBoeTogcWNvbTogcW1wLWNvbWJvOiBQcmV2ZW50IHVubmVjZXNzYXJ5
IFBNIHJ1bnRpbWUgc3VzcGVuZCBhdCBib290CiAgcGh5OiBxY29tOiBxbXAtdXNiYzogUHJldmVu
dCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdAogIHBoeTogcWNvbTogcW1w
LXVzYi1sZWdhY3k6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAg
IHN1c3BlbmQKICBwaHk6IHFjb206IHNucHMtZmVtdG8tdjI6IEZpeCBwb3NzaWJsZSBOVUxMLWRl
cmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAgIHN1c3BlbmQKCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtY29tYm8uYyAgICAgfCAxMCArKysrLS0tLS0KIC4uLi9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXVzYi1sZWdhY3kuYyAgICB8IDIxICsrKysrKysrKysrKy0tLS0tLS0KIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgICAgICB8IDEwICsrKystLS0t
LQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc25wcy1mZW10by12Mi5jIHwgMTUgKysr
KysrLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlv
bnMoLSkKCi0tCjIuMzQuMQoKVG86IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+ClRvOiBO
ZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KVG86IERtaXRyeSBCYXJ5
c2hrb3YgPGx1bWFnQGtlcm5lbC5vcmc+ClRvOiBXZXNsZXkgQ2hlbmcgPHF1aWNfd2NoZW5nQHF1
aWNpbmMuY29tPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCgot
LS0KTG9pYyBQb3VsYWluICg1KToKICAgICAgcGh5OiBxY29tOiBxbXAtY29tYm86IFByZXZlbnQg
dW5uZWNlc3NhcnkgUE0gcnVudGltZSBzdXNwZW5kIGF0IGJvb3QKICAgICAgcGh5OiBxY29tOiBx
bXAtdXNiYzogUHJldmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdAog
ICAgICBwaHk6IHFjb206IHFtcC11c2ItbGVnYWN5OiBGaXggcG9zc2libGUgTlVMTC1kZXJlZiBv
biBlYXJseSBydW50aW1lIHN1c3BlbmQKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiLWxlZ2FjeTog
UHJldmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQgYXQgYm9vdAogICAgICBwaHk6
IHFjb206IHNucHMtZmVtdG8tdjI6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1
bnRpbWUgc3VzcGVuZAoKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5j
ICAgICAgfCAxOSArKysrKysrKysrKystLS0tLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXVzYi1sZWdhY3kuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tCiBkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jICAgICAgIHwgMTggKysrKysrKysr
KysrKy0tLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNucHMtZmVtdG8tdjIuYyAg
fCAxNyArKysrKysrKysrKysrLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyks
IDE3IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDkxMGI4MjhiMjJiN2I5MTA1NGIzYmQ0
YmU2NzZhMDE3NDQ0YjBlMDAKY2hhbmdlLWlkOiAyMDI2MDcyMC1xY29tLXVzYi1waHktZml4LW51
bGwtZmYwOTdmNTZkMWU0CgpCZXN0IHJlZ2FyZHMsCi0tIApMb2ljIFBvdWxhaW4gPGxvaWMucG91
bGFpbkBvc3MucXVhbGNvbW0uY29tPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
