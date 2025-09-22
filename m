Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC11CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 23:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrPYjyxis1q6rmGtbcdPC0D+STG0gNXzgMXN/9WinEU=; b=3bB74EJ1clQWo0
	G9ypxUp561/5zyO9V1lDqm30P3tJ5dmN0c0CTHhe6XMlWtG9HC2Tz2cKqUKte1ymxEwmb4QQxhn1N
	kPw0gB156S2SxfBi+34CgwIelP8QbwvZaRtCHZTMikoGcJQiLYOul4eEIJWAUcn0FOYbXleu14W5k
	hvz+XwRWIo1EV0v7J/j+aCVcJmj6BBRJgxa3gURbP2MFiVI5YBw8YJHeT1xm9AVWoW8hI9FZMEANR
	doMt9BSdrX7u4BRPCpUViKccq5th7CTdizljB1i3YPOZxqbnC81YUe9qQ3iv/2hsKTpkPUrQbT4Vy
	rCwKHMl0wo2Xsuhp90Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0q7a-0000000BnvJ-28GL;
	Mon, 22 Sep 2025 23:39:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0q7Y-0000000BnuK-0uTQ
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 23:39:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MINr9A022627
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:39:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e5TvOCaHalM32QUUJdndPnHbjMULpv/tXt4BpcYo4Xw=; b=RyxQCKkW5kWPhVUt
	3GGAY8PcspEk4oILlwudowluIi8Z+6u5eKYlLEEOiSyDdqlvsabyObnFBMoYp+jL
	BJ8AAQT8WKgG9Uzm96aqnEXEYTYa3u239R27+K8kwxscKc9zu3RgSH4HoFLDqax3
	Q/LQ9lp3tVXTQBlra5ArxzWujzbmK/+JTQ3DjamvAon3Mjc0NNTGD4GwAC4wZmHP
	0SNNkIA+al9Ygp4mObCquxSfIE8E09jYVPbnW1BDiV88K/+B02ArWbkPp7C5CnlG
	/ClpR6MGV2fyjJTKtxZgtiaxubK3uzdgkuYQUdF+XVMFdHRJKXKiyl3HZOToD23s
	1HfR6Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nya9vm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 23:38:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78f2b1bacfcso80866996d6.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 16:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758584338; x=1759189138;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e5TvOCaHalM32QUUJdndPnHbjMULpv/tXt4BpcYo4Xw=;
        b=ULyY37KjYdv4GUrV2VU87bKfpGtyVq0L/JORTGadYKOY1gFzMNeRHFkVZT81bJ7qFF
         EcoQezcgzJxbLTOzlakxv7MwtWtGZ9EfYlos0VMYf0MgmzCQuy5Ny7i8nWXP0BCP6Hc0
         8bbI6BHd5/RNMpmHcIOIQv6YbbVA2aJ7Qquen/zWjm2CttnqwZ8s3xoQfe9fx7O4Ww+J
         SsyNk4bXLvlnVoKYd48dWCM2lLpyhjiSUDDKv1ZZiKZ2HZdVjfAur6GrphR72vTuo+VD
         aH9fI6mnsqCMtYdyljNchKr84rTKNwAYUMzCEbMW1rbU9KkVSOMfAVIjv6Ilksud5+BR
         cvyA==
X-Forwarded-Encrypted: i=1; AJvYcCWtq20gfL+1WiNUJdjaMtmcxU5flndXiacVgF1255GBvKeqfk2aaZMWCudBBk70xSu5QczxPGjzWgM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwPP83B6PMgQi02l2g+pt2LnUqAsFeJBdbnY+srNNCk23FlayE
	pSL96an1Tdg4st+C0ndHkdQIPZd4IYzEQFLMjyj0aro/Xp4f/XlPa8zxTCWond9Vu0sdxl9l7t8
	JhJSHn1M2ieFXVWiDh0LDBVIlNJFXyTxYXJRDdyx6U+s9BDhWe8r/BjAvFbt9YYK8YRY8
X-Gm-Gg: ASbGncswaUaF2fMDY+YjzOhWFVqINTPDPhve/oLnN+gr0JLwo7/57DTqSHDikR1ID1r
	F7AimmQq5pb93tIx+jtMSUB0dS7TV410pOY4joLJqAzqd0JOu8HDMDvuPblT8o5HLewauZ9/fU9
	UmodW/0euuVzTusV8unmfL0CiL8/p05zj7ePGCBgWC4ZDeway5S0VBWxz16b4hXPYjBZ/6MwutY
	qFDmvKbr0hwVdt9I0sNxRTPMp4/iczhMahFCNlqjcPjD0Pl6TYdXgYW91VIJlkkJI1RPNnmj6Yk
	6yNWimdhmr2648OAWjOgrra7xBHOtozgFMJ74Q9E0D835mutx5ewmJD8TFoaOId1oLuyW4W+LKD
	lxbs/5Ljh8keVURWoDCv9g+qS5L/GGPbZKqeXlQCOj9D5SmIFZjAo
X-Received: by 2002:ad4:4eed:0:b0:79c:f4b0:6813 with SMTP id 6a1803df08f44-7e70381f0aemr8295116d6.21.1758584338169;
        Mon, 22 Sep 2025 16:38:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGUSFjg5iWYzh+WxjwkEqcZf3xV54AJeAPRjTMWZAiNEPSIO65hMhienoOLDZE1fB+/IhMYg==
X-Received: by 2002:ad4:4eed:0:b0:79c:f4b0:6813 with SMTP id 6a1803df08f44-7e70381f0aemr8294756d6.21.1758584337686;
        Mon, 22 Sep 2025 16:38:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b7e33b78bsm2117111e87.45.2025.09.22.16.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 16:38:56 -0700 (PDT)
Date: Tue, 23 Sep 2025 02:38:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <bonlc3rnfizezrobyuazv2cmyu3hqqck7tbk2g5ryln24eiwno@jxsz2rg2dyex>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
 <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
 <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
 <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
 <28eef277-c778-4ffe-94c6-2e90d58633de@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28eef277-c778-4ffe-94c6-2e90d58633de@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d1de13 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W0oVTkMUdJ9i6-1frqUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: YwRKftdwvsDtaOtoRK1dQLk2C0rNT7V5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX4GeufCGdNAbY
 wOLlWCux4iB93D6/lnwgzX8787ls0xFiamBjMjULSIa47YDF4S5Rlxkz/iZuxlgTu8qbj6Qo1B1
 35sDbOoLy1jcQnKj+sO7CGB/aD+Pk8BsG2gIJpP5wBny4iHUo6ETyzkhcP0Tg/xFAsOWH8oLRss
 U1zeGlW3EDdFSuW8/NB0ZPOEZZ5gzTvxuxwXgL6c46mjPz9Pv7XDray6TOjuzGz/dvB2/T8kaiq
 Mux5zla9mfZCXB5Vj5T2VCVipmhBnUb9bcvjprUXeaKc/507fwKqA3ECAHMY2O11woPlcAdCEfM
 zzCT+RTHuL/b5SPnpXSxLDzeAc/zw4slStRPxzcNN9Gtsst0w7jXqsGReWbiVgTf7fmS4EWM9/J
 i5MI97X2
X-Proofpoint-ORIG-GUID: YwRKftdwvsDtaOtoRK1dQLk2C0rNT7V5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_163900_260662_A73B80A5 
X-CRM114-Status: GOOD (  34.37  )
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

T24gTW9uLCBTZXAgMjIsIDIwMjUgYXQgMDc6Mjg6MTdQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOS8yMi8yMDI1IDU6NDUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBNb24sIFNlcCAyMiwgMjAyNSBhdCAwMjo1ODoxN1BNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBPbiA5LzIwLzIwMjUgMjo0MSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+Pj4gT24gRnJpLCBTZXAgMTksIDIwMjUgYXQgMTA6MjQ6MjlQTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4+PiBBZGQgUUNTNjE1LXNwZWNpZmljIGNvbmZpZ3VyYXRpb24gZm9yIFVT
Qi9EUCBQSFksIGluY2x1ZGluZyBEUCBpbml0Cj4gPj4+PiByb3V0aW5lcywgdm9sdGFnZSBzd2lu
ZyB0YWJsZXMsIGFuZCBwbGF0Zm9ybSBkYXRhLiBBZGQgY29tcGF0aWJsZQo+ID4+Pj4gInFjczYx
NS1xbXAtdXNiMy1kcC1waHkiLgo+ID4+Pj4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUg
WWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+ID4+Pj4gLS0tCj4gPj4+PiAgZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyB8IDM5NSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDM5NSBpbnNlcnRpb25z
KCspCj4gPj4+Pgo+ID4+Pj4gKwo+ID4+Pj4gKwl3cml0ZWwoMHgzZiwgcW1wLT5kcF90eCArIFFT
RVJERVNfVjJfVFhfVFJBTlNDRUlWRVJfQklBU19FTik7Cj4gPj4+PiArCXdyaXRlbCgweDEwLCBx
bXAtPmRwX3R4ICsgUVNFUkRFU19WMl9UWF9ISUdIWl9EUlZSX0VOKTsKPiA+Pj4+ICsJd3JpdGVs
KDB4MGEsIHFtcC0+ZHBfdHggKyBRU0VSREVTX1YyX1RYX1RYX1BPTF9JTlYpOwo+ID4+Pj4gKwl3
cml0ZWwoMHgzZiwgcW1wLT5kcF90eDIgKyBRU0VSREVTX1YyX1RYX1RSQU5TQ0VJVkVSX0JJQVNf
RU4pOwo+ID4+Pj4gKwl3cml0ZWwoMHgxMCwgcW1wLT5kcF90eDIgKyBRU0VSREVTX1YyX1RYX0hJ
R0haX0RSVlJfRU4pOwo+ID4+Pj4gKwl3cml0ZWwoMHgwYSwgcW1wLT5kcF90eDIgKyBRU0VSREVT
X1YyX1RYX1RYX1BPTF9JTlYpOwo+ID4+PiBBcmUgeW91IHN1cmUgdGhhdCB0aGVzZSBkb24ndCBu
ZWVkIHRvIGJlIGFkanVzdGVkIGJhc2VkIG9uCj4gPj4+IHFtcC0+b3JpZW50YXRpb24gb3Igc2Vs
ZWN0ZWQgbGFuZXMgY291bnQ/Cj4gPj4+Cj4gPj4+IEluIGZhY3QuLi4gSSBkb24ndCBzZWUgb3Jp
ZW50YXRpb24gaGFuZGxpbmcgZm9yIERQIGF0IGFsbC4gRG9uJ3Qgd2UgbmVlZAo+ID4+PiBpdD8K
PiA+Pgo+ID4+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPiA+Pgo+ID4+IEkgYWdyZWUgd2l0aCB5
b3VyIHJlYXNvbmluZyBhbmQgY29tcGFyZWQgdGFsb3MgMTRubSBIUEcgd2l0aCBoYW5hL2tvbmEK
PiA+PiA3bm0gUEhZIEhQRzsgdGhlIDdubSBDT01CTyBQSFkgc2VyaWVzIGhhcyBvcmllbnRhdGlv
bi9sYW5lLWNvdW50IGRlcGVuZGVudAo+ID4+IGNvbmZpZ3MsIGJ1dCB0aGUgMTRubSBQSFkgc2Vy
aWVzIGRvZXMgbm90LiBPbiBRQ1M2MTUgKHRhbG9zKSwgdGhlIFRYXyoKPiA+PiByZWdpc3RlcnMg
eW91IHBvaW50ZWQgdG8gYXJlIHByb2dyYW1tZWQgd2l0aCBjb25zdGFudCB2YWx1ZXMgcmVnYXJk
bGVzcwo+ID4+IG9mIG9yaWVudGF0aW9uIG9yIGxhbmUgY291bnQuIFRoaXMgaGFzIGJlZW4gY29u
ZmlybWVkIGZyb20gYm90aCB0aGUgSFBHCj4gPj4gYW5kIHRoZSBkb3duc3RyZWFtIHJlZmVyZW5j
ZSBkcml2ZXIuCj4gPiBUaGFua3MgZm9yIHRoZSBjb25maXJtYXRpb24uCj4gPgo+ID4+IEZvciBv
cmllbnRhdGlvbiwgZnJvbSByZWZlcmVuY2UgdGhlIG9ubHkgZGlmZmVyZW5jZSBpcyBEUF9QSFlf
TU9ERSwgd2hpY2gKPiA+PiBpcyBzZXQgYnkgcW1wX3VzYmNfY29uZmlndXJlX2RwX21vZGUoKS4g
VGhlIERQIFBIWSBkb2VzIGhhdmUgYW4KPiA+PiBTV19QT1JUU0VMRUNULXJlbGF0ZWQgcmVnaXN0
ZXIsIGJ1dCBkdWUgdG8gdGFsb3MgbGFuZSBtYXBwaW5nIGZyb20gdGhlCj4gPj4gRFAgY29udHJv
bGxlciB0byB0aGUgUEhZIG5vdCBiZWluZyB0aGUgc3RhbmRhcmQgPDAgMSAyIDM+IHNlcXVlbmNl
LCBpdAo+ID4+IGNhbm5vdCByZWxpYWJseSBoYW5kbGUgb3JpZW50YXRpb24gZmxpcC4gQWxzbywg
UUNTNjE1IGlzIGEgZml4ZWQtCj4gPj4gb3JpZW50YXRpb24gcGxhdGZvcm0gKG5vdCBEUC1vdmVy
LVR5cGVDKSwgc28gdGhlcmUgaXMgbm8gdmFsaWRhdGVkIGhhcmR3YXJlCj4gPj4gcGF0aCBmb3Ig
b3JpZW50YXRpb24gZmxpcCBvbiB0aGlzIHBsYXRmb3JtLgo+ID4gV2FpdC4uLiBJIHRob3VnaHQg
dGhhdCB0aGUgdGhlIG5vbi1zdGFuZGFyZCBsYW5lIG9yZGVyIGlzIGhhbmRsZWQgYnkgdGhlCj4g
PiBEUCBkcml2ZXIsIHRoZW4gd2Ugc2hvdWxkIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBvcmllbnRh
dGlvbiBpbnNpZGUgUEhZCj4gPiBkcml2ZXIgYXMgdXN1YWwuCj4gCj4gCj4gWWVzLCBJIGhhdmUg
Y29uZmlybWVkIHRoaXMgd2l0aCBvdXIgdmVyaWZpY2F0aW9uIHRlYW0uCj4gCj4gRm9yIHRoZSBu
b24tc3RhbmRhcmQgbGFuZSBvcmRlciwgaGFuZGxpbmcgZmxpcCByZXF1aXJlcyBzd2FwcGluZyBt
YXBwZWTCoAo+IGxhbmUgMCDihpQgbGFuZSAzIGFuZCBsYW5lIDEg4oaUIGxhbmUgMiBpbiB0aGUg
bG9naWNhbDJwaHlzaWNhbCBtYXBwaW5nLgo+IFRoaXMgaXMgYSBoYXJkd2FyZSBsaW1pdGF0aW9u
LCBhbmQgd2l0aCB0aGUgY3VycmVudCBQSFkgZHJpdmVyIHdlIGNhbm5vdAo+IHByb3BhZ2F0ZSBv
cmllbnRhdGlvbiBzdGF0dXMgdG8gZHBfY3RybCBmb3IgcHJvY2Vzc2luZy4KClRoaXMgbWlnaHQg
bWVhbiB0aGF0IHdlIG1pZ2h0IG5lZWQgdG8gbWFrZSBEUCBob3N0IHJlY2VpdmUgbXV4Cm1lc3Nh
Z2VzLi4uCgo+IAo+IAo+ID4gQW55d2F5LCBwbGVhc2UgYWRkIGEgRklYTUUgY29tbWVudCBpbnRv
IHRoZSBzb3VyY2UgZmlsZSBhbmQgYSBub3RlIHRvCj4gPiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhh
dCBTV19QT1JUU0VMRUNUIHNob3VsZCBiZSBoYW5kbGVkLCBidXQgaXQncyBub3QgYQo+ID4gcGFy
dCBvZiB0aGlzIHBhdGNoIGZvciB0aGUgc3RhdGVkIHJlYXNvbnMuCj4gCj4gCj4gT0ssIEkgd2ls
bCBhZGQgYSB8RklYTUV8IGNvbW1lbnQgaW4gfHFtcF91c2JjX2RwX3Bvd2VyX29ufCBhbmQgdXBk
YXRlIHRoZQo+IHJlbGF0ZWQgY29tbWl0IG1lc3NhZ2UuCgpUaGFua3MhCgotLSAKV2l0aCBiZXN0
IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
