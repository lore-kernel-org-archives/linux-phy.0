Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012C8E81BAD
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 12:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0mbzO4lFw28QBOviSy/hf5URO04GeXk+5//n0Nldbk=; b=HTTuFtBtqcSU2s
	SYJLoRZD7gePNvPqVywVk9RFa34pydE3IZM55NvCxeo0qtSWMZRsclq1WBQU/XlSzMFFJnsGB8fpE
	UfbrGesHKNfcbRSwp8xIC2g+pxFzbv/nJ4twbvwz2X6KTFaPjMLfTD1c8jGLil+ZtVuXqkIgSMzYU
	mGwvob2A1UhWi7uHu7FyuNdrimjdFl/XD+NenBxn9IxrWfOwqaUqNZm8DV2wmEQly1eEerMzVMVZi
	6Ts6fiUeyrPWImPxFlUJYQIYws8SknvTOXFQKTLE4lKKlNIbOiTCSn5YlVIwG1s/QHJKFL8ItObw/
	b3OYqgeoa8DOqu2o+1SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQgJ-0000000FOA1-2SDF;
	Mon, 09 Feb 2026 12:47:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQgH-0000000FO9e-0dt9
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 12:47:58 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6199Veig1656474
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 12:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zv1IhHfbQzLncggLWBYHZWb7CtKh4XFfNBzhhyfYp1s=; b=j3SBJLmr7P6rfDuc
	TlVIGd1ns23MD2JU5ge7KZs+1DewX4rveHgeCSkTdd9aTc+rR9EYDDifU30euOPc
	jk2HCr7xo25Ws+iBO5VCSwBtEqO86YO8xqSrXCGV5dIkOek0d0hAV+05N/SX+Up9
	rsa+PdTfqX6V7Fd2OPlK9P3HlA5T2Y/25RHV4C03wxEeda8P2SL8QfcXpET7slKQ
	QFzSvriYlsv7odZUGHGWQmUsRUNakiOBqtlcjYVKb1MmdHOm+bIsecki9VNeNykw
	z9Cg9WsJwsVF6OYDxhiaaWD7e6vieLv9d5rbNkSDWJ/jWlttnW9ZYh7ykVInlh6G
	FjVeiQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7862spnk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 12:47:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a289856eso1577525085a.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 04:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770641275; x=1771246075; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zv1IhHfbQzLncggLWBYHZWb7CtKh4XFfNBzhhyfYp1s=;
        b=CcU+Py3bz/hr4lmEJMkkvbQPUT4SA19IXt4UhIWBI4dgwEOHs/8rlS906ed7jPUNWD
         9dL0z0jBqDNj19prufe440I3BoLw06LT/b8LJKKNxN5XBDpyKVs6ATUye2Qnip7QOy6f
         LUdEAbs6syVFpkfk7biYsV4rZeQT6ynlc/jEAwB6lFowXeGYqaoZ8RNHBfrYiYQel2eh
         la+uvBl+qYAOfvvQ5OZJCH+3WuV6NTYRAjbb+efc2Uk02HSqOkn07hoArf6mPy6DWZlV
         lD0/HPDth+X6g0M+gDO2a2Cu0yo/bRP0EPSUaTtfXvzPFmXMroegYa83raZmzrhn79ci
         g9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770641275; x=1771246075;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zv1IhHfbQzLncggLWBYHZWb7CtKh4XFfNBzhhyfYp1s=;
        b=rd5GBhT1z1lxFe1TOnrwa/wgQzawcHbIra6hbNj+qbQzmuzuSCSAhmSsZ3VCian7Fv
         FRKIqjjYPKa5ouvqdSjK3mN5VqtZRoYsjYIs8r854bSIjiFlEp6AFY0VmnIzL3bVojbU
         xBjLB5tq5p++duDIZLXVadWY252I2dyp/OfmifWDBF+yL9zhPS9HmHjPZkY7391LaLcm
         4ftg5EfLL8g82t/ejWXZBo5ZpQFgKNt9hg6B5LdFXehwSuOufLeGSmX33Bjw9wztasZm
         0PLZY4IEhY1B52FXbaDtwkJAaZi0wjgQQMv2xFGpP/+csysqALmW8D9wf6/wFh7weCvY
         b3Lg==
X-Forwarded-Encrypted: i=1; AJvYcCX8hHepry2UIp2nJVMY5O58s42w55lCB5Yj+Hm71orUbviZpDMfQaRZHY69LN/T1gvfWhILJLVl+1s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSFNuVaD0301KO62d8bkKpVFwkTr94IIM/LgFwH9sVNaScdHPN
	+kOHXHmueBOQqnoJz2uJAJy8l2lpMSFtJjpuU/SSNCEeWCI+wlJmQoHaK4m3TyMfyhy/iEzMotz
	f80c1ED+FP0rmkJdNuEer5cRsqphrpcCZ03X3+B6G9udR6XtR/1geSnUOcDd6577EmQaq
X-Gm-Gg: AZuq6aIFrNmKnOBXusxsfNeJLI3oBw979iw7LEs9uPt6rIH3tB0k9NX5LQIpK3sQfQD
	oQTZ0lz79QZsil/k6rmImelmj4bV3w5Ce3Z3w522L8Cv8qDRuZzFiiUK6UOSbgTSpaBC6+FBOkp
	uzkVtynjXwFpIhqieejkFeRbXppOPNHdz7H0YGT+N28La6PR+wpJoARLmeNKxIRK8NUvuiZAbyB
	eeTPSMxzPOLP6JpbeJH7Qwd4Csh7Fna6yTYXgvgLJ/e0oHp5trtyf9KoKK/cC+g+pEEPDnVKTAN
	5rSaS2MtldVfS7Q9GLLoSYt6Cv3lpNRN5iI+wA/UpVtUDjKd0lIFlo0d8BSKJY8Lv4v5Yi++cp0
	Yqef7MDA7ZrzA35ICXA/g5Z5uKPkJqZnSokFgvmC8DomwzPWGtcO2pH1Kbh5UVfUpcemAfIN3wz
	5GZUw8dm8i6c9hK438JASGc0E=
X-Received: by 2002:a05:620a:2893:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8ca40b82dabmr1929216785a.10.1770641275537;
        Mon, 09 Feb 2026 04:47:55 -0800 (PST)
X-Received: by 2002:a05:620a:2893:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8ca40b82dabmr1929213485a.10.1770641275074;
        Mon, 09 Feb 2026 04:47:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e4d263402sm1466034e87.44.2026.02.09.04.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 04:47:54 -0800 (PST)
Date: Mon, 9 Feb 2026 14:47:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo
 PHY configuration values
Message-ID: <w3vmcgeh5bw7lfuyv7ziiw3oxpxtjyqmojddamjo5alz4nv7ld@ytgjwdhecfua>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
 <23930db0-730e-4f99-a661-262b15f1a8ac@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23930db0-730e-4f99-a661-262b15f1a8ac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDEwNiBTYWx0ZWRfX0Ra3bDU0LCPZ
 I8xF7E/rjI5tqd7q0R50nB2T4PV11xijn8LU6C7Dp+M5sj4v9BT2VpT8McFKMY/9MvVHciBwpI/
 hdxd2j+MQN96xpmqj66eHiDkzTl4zTIAGWtJFHdRYMEUEo4jQ/P4MmOSeRetS0Ab5GglxKeUO2f
 bVWzTtwN2qsmH9/SmlCjEbN5A3DTUOGk+ODmjmF1+PSYCeSwSYupCF0XxUuRvKC+ySrPCqcAQ2L
 K30FK/WqwUM+obBpPUmQ6Pvsapq9jjoo0UqZv3od57+FJSX18L2/FdFWmQhbWnwjw5QEzEmU1Ei
 zIfi00OzyAeN+W8a4fKO7uEe3xrGaNVts6OTu6AwCmAKvgp1Eb8tnn723bUKhoHCd6OvrmfEXrR
 S2bwYlC7W2NXi2XqjhZS/ZEdnUMrLQVg1O1WcDf3zbdnylyc8R8atGT1ZOsyenfo944DkEIY5DZ
 dPOU+h4UVnA7SGK4IWg==
X-Authority-Analysis: v=2.4 cv=bZhmkePB c=1 sm=1 tr=0 ts=6989d77c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=XS_1FvVUK9dzS3CTT8oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: hnojSX1NeCmG4riTHAQZndgUesimQUdx
X-Proofpoint-GUID: hnojSX1NeCmG4riTHAQZndgUesimQUdx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_044757_235471_71B6E154 
X-CRM114-Status: GOOD (  21.92  )
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

T24gTW9uLCBGZWIgMDksIDIwMjYgYXQgMDU6NTI6MjJQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDIvNy8yMDI2IDY6MjIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gPiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAwNToyMDo1M1BNICswODAwLCBZb25neGluZyBN
b3Ugd3JvdGU6Cj4gPiA+IEFjY29yZGluZyB0byB0aGUgY3VycmVudCBIUEcgc2V0dGluZ3MsIG1v
c3QgZURQL0RQIGNvbWJvIFBIWXMgY2FuIHJldXNlIHRoZQo+ID4gPiBzYW1lIGNvbmZpZ3VyYXRp
b24gdmFsdWVzLgo+ID4gPiBEUCBtb2Rl77yaCj4gPiA+IAktc2E4Nzc1cC9zYzcyODAvc2M4Mjgw
eHAveDFlODAxMDAKPiA+ID4gCS1nbHltdXIKPiA+ID4gZURQIG1vZGUobG93IHZkaWZmKToKPiA+
ID4gCS1nbHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEwMAo+ID4gPiAJLXNjNzI4MAo+ID4g
PiBUaGUgY3VycmVudCBkcml2ZXIgc3RpbGwga2VlcHMgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhl
c2UgdGFibGVzIGFuZAo+ID4gPiBkb2Vzbid0IGZ1bGx5IHN1cHBvcnQgZXZlcnkgY29tYm8gUEhZ
IG1vZGUuIFRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUKPiA+IAo+ID4gU2VlIERvY3VtZW50YXRpb24v
cHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0LCAiVGhpcyBwYXRjaCIuCj4gPiAKPiBTdXJl
LiBnb3QgaXQgdGhhbmtzLCB3aWxsIHJlbW92ZSAiVGhpcyBwYXRjaCIuCj4gPiA+IHJlZHVuZGFu
dCBjb25maWdzIGFuZCBrZWVwcyBvbmx5IHRoZSBzZXRzIHdlIGFjdHVhbGx5IHVzZSwgbWF0Y2hp
bmcgdGhlCj4gPiA+IHBsYXRmb3JtcyBsaXN0ZWQgYWJvdmUuCj4gPiAKPiA+IFNob3VsZCBpdCBi
ZSBjb21iaW5lZCB3aXRoIHRoZSAzcmQgcGF0Y2g/IFRoZXJlIHlvdSBzb3J0IG91dCBhbGwgdGhl
Cj4gPiB0YWJsZXMsIGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gcmV2aWV3IGFsbCBwcm9ncmFtbWlu
ZyB0b2dldGhlci4KPiA+IAo+IEhpLCBpZiB0aGlzIHdvdWxkIGhlbHAgd2l0aCB5b3VyIHJldmll
dyB3b3JrLCBJ4oCZbSB2ZXJ5IGhhcHB5IHRvIGRvIGl0Lgo+IE15IG9yaWdpbmFsIGludGVudGlv
biB3YXMgdG8gZG8gc29tZSBjbGVhbnVwIGluIHRoaXMgcGF0Y2jigJRjb3JyZWN0IHRoZSB0YWJs
ZQo+IHZhbHVlcyBzbyB0aGF0IG1vcmUgcGxhdGZvcm1zIGNhbiByZXVzZSB0aGUgc2FtZSB0YWJs
ZS4KCkZpeGVkIHNob3VsZCBjb21lIGJlZm9yZSBjbGVhbnVwcyAoc28gdGhhdCB0aGV5IGNhbiBi
ZSBiYWNrcG9ydGVkIHRvCnN0YWJsZSBrZXJuZWxzKS4KCj4gRnJvbSBLb25hcmTigJlzIGNvbW1l
bnRzLCBpdCBzZWVtcyB0aGF0IHRoZSBIUEcgdGFibGUgbWF5IG5vdCBiZSB0aGUgbW9zdAo+IGFw
cHJvcHJpYXRlIG9uZSBlaXRoZXIuCj4gTWF5YmUgc2hvdWQgZmlyc3QgZGV0ZXJtaW5lIHdoYXQg
dGhlIGNvcnJlY3QgdGFibGUgdmFsdWVzIHNob3VsZCBiZS4KClBsZWFzZSBmb2xsb3cgdGhlIHRh
YmxlcyBmb3IgZWFjaCBTS1Ugc2VwYXJhdGVseSAodGhhdCdzIHRoZSAnZml4JwpwYXJ0KS4KCi0t
IApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
