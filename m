Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB520E9129A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 09:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USalJtLxt4GM1za9mYU7Gg7gY6KOrzDjlPWGJDdm4wM=; b=vs0r0qB+wUkoRQ
	58TaOOgP4cfOclaX49aMco+okgfya1AYSHp9P4N3p9NYR9jv+4/i8nikko4Wo9pctv1R6i3fxGWqk
	WWQ/of8cvBknTY3ZOtGOcf9oCGL8Jum8Ihk7W0gb0xZBTk9CSy+G4ckpw+S1cQi4lDHEv1HDBXshH
	ZMQkQAWEFK6hTDFcN+rgbmXW6gMS0jCgkPmZXGE/d3NvKIGSIQWapuZHZoJycOCsbpmL5Yvif9j1K
	hZ20YKc2f2VEHY1QtP7SiANoRzefjBoG2g8oL4kjXYSA5A4/7pK6/EzRPBVMKHmp8OVcuFDq4nQqO
	w1pJAcj20f2W4NThH1OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvY0-00000009gt4-0HzB;
	Thu, 05 Feb 2026 09:21:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvXx-00000009gs7-1gz5
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 09:21:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153e2YM2760394
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 09:21:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g3Dgz+3YUHjLoZot0YgIGQm2oT7n6h0PpInYZRGVXIo=; b=pWC84+fZqd0lbnHm
	MlxXXK3vyQUxJh2+9giGlhyiFdtqub/TlAmYW4kWT07wf7DtBYG4/+HIwAZVtVNo
	EWhvANUYDSOLHFnyYggyE4BNDBkdZYmL7DBm2Fa5+diJtDjvBAxyRMQSfoKCniGv
	Zjb6N71NuRpYCLWQwUUnMlr4+RpJ937WFGvKiHPueuGWGC6ahCugFoAkiUX6PKQn
	kSXTe83nvvuT2xX9dytm6wgsmCqtPD+S0u8rj4e+/u3yuQVSFZShd7YrvLTmXyNH
	KfdHYgJArqSKBN3u57ch9Go+sELQO6t6WJp1az16m8Nv3+UWqIP40FYqqTI385gX
	s3cqpA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4jpd1486-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 09:21:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89471079a13so48250116d6.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 01:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283268; x=1770888068; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g3Dgz+3YUHjLoZot0YgIGQm2oT7n6h0PpInYZRGVXIo=;
        b=eM16AUIvoe2/wFtpfKoLqo1nLjZTVrqTa0gSx0br5iJdmh1Q7w64M08QbU3BcxrX0I
         vuHTolGBL9zXRGxEI1ULyBSiv1n/yB0Y2QdG4EmSZfE3b7kp+ojAQl0ta8WbzGMq0gz+
         lo0MFGp2lXUxIJDDEAlBAElPVy4oDZ49VHv01wIYUfGthKF76YheKJYEUM1GZHWDLU3/
         lGLJynIOg1Xl2C+wQfD2PmJTKxeudnb64EptXkbKzCpu+MNAwcAlPejEmMTXDXZoGJsM
         Z1aLXAhEAs3QPodNMKTw9tv3Qrne/EV6M4yJqz65CkX3t5OoMSs0yc4Hv3bOjtnRVvsA
         k/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283268; x=1770888068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g3Dgz+3YUHjLoZot0YgIGQm2oT7n6h0PpInYZRGVXIo=;
        b=IA1hnxSfu/5XQ+jcCaMHyFelw1mYPrebS8xn7GvuHodsBo5GQBplc9/emmKkiv4JYZ
         ThIXdHWTvt38cMCP9xpAbVyx3Oz4hfJU8dYv9ASsCuf1zLJPfycOGeeHGUqgMFURIxsH
         S89QGZ5T+Z91XE1wzYrQHD10zd26+Y94teBftyHCAdA6N36gbauEpLc7+IR41ul2zsmn
         WGvpLtEudU4xIttaw3VlSinBXIEwlPjb9uKmCIqGF8mc/qf/TnFjTxhDuUuAy5/Vj0Vl
         rlHuP/vwtyA4Yd3zOAaBR1mSMUazcP0fq1cW8TASo2GtWdwFYP4LObpGHZ9pJJcfLoSN
         GWpA==
X-Forwarded-Encrypted: i=1; AJvYcCVBEjqApIh1xzbYlxogwoAWz9iF4ebV0u4wk/p9eYArYy5EFCKepu0UFtgtsTO5zAvO5jJL1CciMwU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRRTcqfkvPnT9CymTM/dfTTIaxO1fkXZ1w66ymKrBNZBjseaMN
	Uau3NOzhgOA2Y0D1eiWHDyWBvQD426kgarrUfEtOi/JNunx3ztCdI3YlejYXA+u0HC0zE3nPgxJ
	XNf1iggrLXfz7hTZ/gjlpM6IQarszCZVLtPkWGfHfG0QNQf4sgYGJqxqOqymY4rqmoT1FMhZAiZ
	yr
X-Gm-Gg: AZuq6aJeYUpLpjQxWq36Yf+ltsnI6VMQa//ROI5dHX3fQGi0ZCTEGUtPDkNfza7yjU1
	v4gvkDu2pwuKILnCUCl8YH21AV7lJO9hnQxsg833HpLFTavjv3L4p1ErgBBzxUqOxFgBRV2RsLu
	OzlVJ73eOO84ceFf3xtFz1pSB6ySy7MAhj4sN1bFgSPL/bl2Fme1zBghl10HETcwbo4hEVyqBPX
	/8BXz7kXGRr9/Vg+ODphnarn0YP6Pih769NaCrsVQD8Kh4k0gdiTaq6phqfGn3meEqzTkXVgGkX
	Hnjskj9EVWDTd5UXIFCT0z/snbLNWbODHApOo39fsQDLIBS/m05Ijae/cNaBJQjOmdtb5XwvyUJ
	B65c1VhiLmyyP4B80hSptLL8a1hVlKRRRLzcyvR9XCzHkGhL29miqqZzHi6ICkYYgZayLlEs=
X-Received: by 2002:ad4:4ea3:0:b0:894:7fd1:923a with SMTP id 6a1803df08f44-8952214215dmr80679896d6.24.1770283267888;
        Thu, 05 Feb 2026 01:21:07 -0800 (PST)
X-Received: by 2002:ad4:4ea3:0:b0:894:7fd1:923a with SMTP id 6a1803df08f44-8952214215dmr80679616d6.24.1770283267341;
        Thu, 05 Feb 2026 01:21:07 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2c3easm353674885a.32.2026.02.05.01.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:21:07 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 05 Feb 2026 17:20:53 +0800
Subject: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
MIME-Version: 1.0
Message-Id: <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
In-Reply-To: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770283262; l=3768;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=KR1lfA9py9VcnA7CnaicBd9b1jx1HH4FleZGlA3kwl8=;
 b=WNBKT8KCEyDOW5YYauXcAxqX7LU+YIBpPQPP4xwdsKxXfW/61jDxhHC6JSXRZ0LEsYdxIsiA0
 +iBDfr02ygKB/eiglRfgrV53L1MQ4T8FFkNxM/29NRbughvNT4x9Nuv
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NyBTYWx0ZWRfX+wbeitZR0Dl8
 2K1u1B8ZyaskgrtUA8rmWMG2tAkxq3DNwXERLlxqNVbGe7QSis5TpqBQ/DArlVxttyAgYU6Gewv
 9nudF0sTf262HTEfRlxOZd7re/IOSkS97N3BpegshiacORz2FWZoq7wrE8t6yQKKYjy5woNHkEi
 XtF5tiqr4s5VenDjLuzPrXALhsyCi0/qk8meT2iR+bB71xi+dMqdS3YwNsKLaNSlMHxR+64SgPW
 hECnBmC1Thh+sb9aQyTls0dIukr0HmOXEa0bSY4BJK/zzX9kO3YfIcLRVEywejwp2UrePk59O2L
 /dAzj7GjmcnvL3RpIAlxTpPe1WpRMlfrEfoBT2ioz1C37VlJALssMOLKY5ghoJ4ak2bgJ32tZxB
 NkOKfUrcO/v1hNX7aIlIU5FS5YCA4bDe09pBhp/iOvAJ7zIRAC/dIt5CZxnepL5HBczS7vAjQU5
 cEpKf75fm/aNtpd4N5A==
X-Proofpoint-GUID: PE8xBou8W2IKqz9k-zJXfaN-WgAwLktt
X-Authority-Analysis: v=2.4 cv=d7j4CBjE c=1 sm=1 tr=0 ts=69846104 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_hJh01-1qFuxGScrDK8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: PE8xBou8W2IKqz9k-zJXfaN-WgAwLktt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_012109_468863_2DBCF948 
X-CRM114-Status: GOOD (  13.54  )
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

QWNjb3JkaW5nIHRvIHRoZSBjdXJyZW50IEhQRyBzZXR0aW5ncywgbW9zdCBlRFAvRFAgY29tYm8g
UEhZcyBjYW4gcmV1c2UgdGhlCnNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCkRQIG1vZGXvvJoK
CS1zYTg3NzVwL3NjNzI4MC9zYzgyODB4cC94MWU4MDEwMAoJLWdseW11cgplRFAgbW9kZShsb3cg
dmRpZmYpOgoJLWdseW11ci9zYTg3NzVwL3NjODI4MHhwL3gxZTgwMTAwCgktc2M3MjgwClRoZSBj
dXJyZW50IGRyaXZlciBzdGlsbCBrZWVwcyBtdWx0aXBsZSB2ZXJzaW9ucyBvZiB0aGVzZSB0YWJs
ZXMgYW5kCmRvZXNuJ3QgZnVsbHkgc3VwcG9ydCBldmVyeSBjb21ibyBQSFkgbW9kZS4gVGhpcyBw
YXRjaCByZW1vdmVzIHRoZQpyZWR1bmRhbnQgY29uZmlncyBhbmQga2VlcHMgb25seSB0aGUgc2V0
cyB3ZSBhY3R1YWxseSB1c2UsIG1hdGNoaW5nIHRoZQpwbGF0Zm9ybXMgbGlzdGVkIGFib3ZlLgoK
U2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNv
bT4KLS0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyB8IDQxICsrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAzMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCmlu
ZGV4IDEzZmVhYjk5ZmVlYy4uMTBjYmI3ZDlhOGEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1lZHAuYworKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1lZHAuYwpAQCAtMTE2LDE3ICsxMTYsMTcgQEAgc3RydWN0IHFjb21fZWRwIHsKIH07CiAKIHN0
YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnJfcmJyWzRdWzRdID0gewotCXsgMHgwOCwgMHgwZiwg
MHgxNiwgMHgxZiB9LAorCXsgMHgwNywgMHgwZiwgMHgxNiwgMHgxZiB9LAogCXsgMHgxMSwgMHgx
ZSwgMHgxZiwgMHhmZiB9LAogCXsgMHgxNiwgMHgxZiwgMHhmZiwgMHhmZiB9LAogCXsgMHgxZiwg
MHhmZiwgMHhmZiwgMHhmZiB9CiB9OwogCiBzdGF0aWMgY29uc3QgdTggZHBfcHJlX2VtcF9oYnJf
cmJyWzRdWzRdID0gewotCXsgMHgwMCwgMHgwZCwgMHgxNCwgMHgxYSB9LAorCXsgMHgwMCwgMHgw
ZSwgMHgxNSwgMHgxYSB9LAogCXsgMHgwMCwgMHgwZSwgMHgxNSwgMHhmZiB9LAogCXsgMHgwMCwg
MHgwZSwgMHhmZiwgMHhmZiB9LAotCXsgMHgwMywgMHhmZiwgMHhmZiwgMHhmZiB9CisJeyAweDA0
LCAweGZmLCAweGZmLCAweGZmIH0KIH07CiAKIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnIy
X2hicjNbNF1bNF0gPSB7CkBAIC0xNTgsNyArMTU4LDcgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9z
d2luZ19oYnJfcmJyWzRdWzRdID0gewogfTsKIAogc3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1w
X2hicl9yYnJbNF1bNF0gPSB7Ci0JeyAweDA1LCAweDEyLCAweDE3LCAweDFkIH0sCisJeyAweDA1
LCAweDExLCAweDE3LCAweDFkIH0sCiAJeyAweDA1LCAweDExLCAweDE4LCAweGZmIH0sCiAJeyAw
eDA2LCAweDExLCAweGZmLCAweGZmIH0sCiAJeyAweDAwLCAweGZmLCAweGZmLCAweGZmIH0KQEAg
LTE3MiwxMCArMTcyLDEwIEBAIHN0YXRpYyBjb25zdCB1OCBlZHBfc3dpbmdfaGJyMl9oYnIzWzRd
WzRdID0gewogfTsKIAogc3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1wX2hicjJfaGJyM1s0XVs0
XSA9IHsKLQl7IDB4MDgsIDB4MTEsIDB4MTcsIDB4MWIgfSwKLQl7IDB4MDAsIDB4MGMsIDB4MTMs
IDB4ZmYgfSwKLQl7IDB4MDUsIDB4MTAsIDB4ZmYsIDB4ZmYgfSwKLQl7IDB4MDAsIDB4ZmYsIDB4
ZmYsIDB4ZmYgfQorCXsgMHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAorCXsgMHgwYiwgMHgxNSwg
MHgxOSwgMHhmZiB9LAorCXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhmZiB9LAorCXsgMHgwZCwgMHhm
ZiwgMHhmZiwgMHhmZiB9CiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5n
X3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZyA9IHsKQEAgLTE5MywyNyAr
MTkzLDYgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjRbNF0gPSB7CiAJ
MHgwMSwgMHgwMSwgMHgwMiwgMHgwMCwKIH07CiAKLXN0YXRpYyBjb25zdCB1OCBlZHBfcHJlX2Vt
cF9oYnJfcmJyX3Y1WzRdWzRdID0gewotCXsgMHgwNSwgMHgxMSwgMHgxNywgMHgxZCB9LAotCXsg
MHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9LAotCXsgMHgwNiwgMHgxMSwgMHhmZiwgMHhmZiB9LAot
CXsgMHgwMCwgMHhmZiwgMHhmZiwgMHhmZiB9Ci19OwotCi1zdGF0aWMgY29uc3QgdTggZWRwX3By
ZV9lbXBfaGJyMl9oYnIzX3Y1WzRdWzRdID0gewotCXsgMHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9
LAotCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9LAotCXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhm
ZiB9LAotCXsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9Ci19OwotCi1zdGF0aWMgY29uc3Qgc3Ry
dWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2Nm
Z192NSA9IHsKLQkuc3dpbmdfaGJyX3JiciA9ICZlZHBfc3dpbmdfaGJyX3JiciwKLQkuc3dpbmdf
aGJyM19oYnIyID0gJmVkcF9zd2luZ19oYnIyX2hicjMsCi0JLnByZV9lbXBoYXNpc19oYnJfcmJy
ID0gJmVkcF9wcmVfZW1wX2hicl9yYnJfdjUsCi0JLnByZV9lbXBoYXNpc19oYnIzX2hicjIgPSAm
ZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1LAotfTsKLQogc3RhdGljIGNvbnN0IHU4IGVkcF9waHlf
YXV4X2NmZ192NVtEUF9BVVhfQ0ZHX1NJWkVdID0gewogCTB4MDAsIDB4MTMsIDB4YTQsIDB4MDAs
IDB4MGEsIDB4MjYsIDB4MGEsIDB4MDMsIDB4MzcsIDB4MDMsIDB4MDIsIDB4MDIsIDB4MDAsCiB9
OwpAQCAtNTY0LDcgKzU0Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2Nm
ZyBzYTg3NzVwX2RwX3BoeV9jZmcgPSB7CiAJLmlzX2VkcCA9IGZhbHNlLAogCS5hdXhfY2ZnID0g
ZWRwX3BoeV9hdXhfY2ZnX3Y1LAogCS52Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdf
djQsCi0JLnN3aW5nX3ByZV9lbXBoX2NmZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192
NSwKKwkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAog
CS52ZXJfb3BzID0gJnFjb21fZWRwX3BoeV9vcHNfdjQsCiB9OwogCkBAIC05NDQsNyArOTIzLDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX3Y4ID0g
ewogc3RhdGljIHN0cnVjdCBxY29tX2VkcF9waHlfY2ZnIGdseW11cl9waHlfY2ZnID0gewogCS5h
dXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y4LAogCS52Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNv
X2Rpdl9jZmdfdjgsCi0JLnN3aW5nX3ByZV9lbXBoX2NmZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9l
bXBoX2NmZ192NSwKKwkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2Vt
cGhfY2ZnLAogCS52ZXJfb3BzID0gJnFjb21fZWRwX3BoeV9vcHNfdjgsCiB9OwogCgotLSAKMi40
My4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
