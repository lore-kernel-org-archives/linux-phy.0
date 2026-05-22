Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACDBCD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 17:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1K2XcfWxaGwjQ2SWk8rVxm5jfgBIoge9AbPkt23bzYY=; b=x52w+i0MAOcDck
	X3vv+3sOHm716RP5HvizY1e7e63aXVHGjnsrPT+fSGWc2nwFIc2IYWAgNptvKIWy9kXouw4qkhNm5
	yNX4xhZLlSfWdlRA53Ll/WFn/u/uneMJPMxtspiqT9+WAjXs6PPvClfJX8qS8qzF7P0oA1w15bKVV
	FW+I4YIJIH9x7YlAFO+Ms9EXsEj07t7+XVbonNqJF+0mV5YldUe7CELiPuh7flqoThc5UWUYvBuiQ
	IMjp1kMJaK+xygcleXoHN8/OX1W46UTMoJzGIFKeKvANH95wuZyrOIMkTRbGkZ4UTSuleMjdGGwOI
	Bd+/rmRc8RqTqbI+YEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU3L-0000000Bc42-3vyZ;
	Fri, 22 May 2026 17:52:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU3J-0000000Bc38-0att
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 17:52:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGN9iS312917
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:52:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zbg0kWEXrs+ZYBKl75N5Deqt/tJu5PqNcCWKzhnv1qI=; b=Rz8oB+p/ujoyaLyh
	OU+27j3ddWAeWui3DqjmyaFj/P9xm0aNEM78BwH64msZow4QKlfRB/0YeWvnr19o
	Rm6DISycfCqD6ykArlbZs5awk9Ye6n37PBzE92t3tvpRm4Op1LMEoRzuSYPjU7Eq
	0TJB2zT+mP4zUXj52ECdp5srU2cK4KlGDX2EXY4VSByW9/7gJIQxath2I5cGvM8w
	PJurS60qFkT+GQYbWulp/sIsZ/Ad8ypgBxAqfyKjyL/oje/bXEbo75lNjyH+1Lgz
	kCycBfDxMfKRxQ74EkXP5e9u9puaacLB3JgyTGVQ6W1CreD1aqLBlWNpUYe7VwS8
	jNXddQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea88352k5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:52:52 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82f9f49e4beso3764942b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 10:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472371; x=1780077171; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zbg0kWEXrs+ZYBKl75N5Deqt/tJu5PqNcCWKzhnv1qI=;
        b=XSPrnRjadVUM9rz5RuwK5UgmzjALZURKkqaaG27AN+mykDoOnGHv/siACxfm9cMH28
         bExcmrMVqMNnubKvmghNRu3rbfVHUduwt1CWwmNp5tc+DFKUMo4eUyUbeMTxwHZcObcb
         iDir7RvU44aW8URYQL6RV7abP8mzNgh76uCPxfKZcdvT1B14QrhbJiOTDfiAoIaJM3Rf
         ax+ZSpdJYQVRzv4Ui01jz7R412ZpZOHBknNtg3nIxuhC7+JPeCo20XU13B9KHtF0ZFjY
         1Pgbl3opbrZHwRTPI27gjLmIfVNEm3EJSYTo8kYfnppvU8Lt/vCNhvV7ssa1GLwtHyLu
         Jf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472371; x=1780077171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zbg0kWEXrs+ZYBKl75N5Deqt/tJu5PqNcCWKzhnv1qI=;
        b=CncX4lDbKhB3CtVaA1DmIRdYsWE5R541/YE/orw0FyDA+vEEPGDZgtlo05Al/Flz6N
         VWFJh4t458+/JSch4fTBb63MQGkT+Rz32Fs+aunCI7KTNsTQEpqGRp9FnVgxeOi03Ews
         1jdrWe4+fmOFDKgR8xYc3oko6CEMP759LiQoDSRNlcCODkK/dkqqzCe7l2Z1lbCg/E02
         xp5qoMl6WX29XW6cg6Qh0kJPo9jvfJMWnbNZEHvmIq4K6+nYaiFaajrJI2KJov17gmve
         mtZBNBkKonOC84WOpRC3HVp/zF+z+DJKQCyvt738UzMlQGsZ2tIIfp/30yu2CZE1T2EN
         BbxQ==
X-Forwarded-Encrypted: i=1; AFNElJ+UxnUnEz7zDLdWoOd5NKJ6M3+3Ethr2X3lz4yU8yl5ut9PYTgGmU7aZJkrM1nkouskMTZKW6tvZbQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz71qD9dHGAM/PFjEp2Soh1H9OgA5/69rJ0/2bgW9rMiws3MyEz
	XQGDr1CtBzTF1ojm4FRy2m6KUDoeYLAarcOmvre1MnN/oSGXjpwuRWNqhTxkhvGTqV6/Y6vG68V
	e/twyyeIANsDeFz7Zxpr9XP/qR4i8PJZdzopTLwxW9DceHfFTEAr9m8sdnQCtDro73IRV
X-Gm-Gg: Acq92OEmNr7pWnpR6uQT0MsUQzCasBqh/XQHBYjc+QHhAT51OZNTnjKnfUPb31PZhcB
	X0xS75s9oGij+3JJLicw8hLi8ziW0IxnSyGhGGz7Pdkw66gvO+CFLEm+j6OTdmSwn5EtXI/KRcQ
	Qgke1N92atCUwjQBo86YUe5bYF+7R5cC8vxM/PXELpZdPf5jP4mQxPUzVYVP4mOf+9ONwrniNMB
	m4S4O/ASlf1jWIcpT3r0Ls7asC32o5ZQli13GdBhup28fKxjrHBdAP/1kCXbFzfJTxDJkj/BF+b
	VV3ANS6FxLtz9TuZ6vsvoZfw+9SqGICAN6JAyJdDVMu11wQtYSS4L24bcV0/hknoe0JCXJ0e6rj
	hz5pLjxEhMRqiV4RignyM0s/RUGvlQ4MMzZW+D+KgEgzlDqo19To=
X-Received: by 2002:a05:6a00:8c04:b0:827:2ee0:411f with SMTP id d2e1a72fcca58-8415f3ab22emr5037807b3a.4.1779472371037;
        Fri, 22 May 2026 10:52:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:8c04:b0:827:2ee0:411f with SMTP id d2e1a72fcca58-8415f3ab22emr5037770b3a.4.1779472370572;
        Fri, 22 May 2026 10:52:50 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.234.45])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84165010d60sm3022799b3a.61.2026.05.22.10.52.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 10:52:50 -0700 (PDT)
Message-ID: <4787d5f9-601a-4d27-91d3-33216ee6f64d@oss.qualcomm.com>
Date: Fri, 22 May 2026 23:22:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
        conor+dt@kernel.org, olteanv@gmail.com
References: <20260519-shikra-dt-v2-5-c01b90fb4395@oss.qualcomm.com>
 <20260519123738.BD9C3C2BCB3@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260519123738.BD9C3C2BCB3@smtp.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE3OCBTYWx0ZWRfX4ASI83GNSzqW
 +G3+jrfCtrCML4fN0eLtsHZOqqTgxgBT7P5oXb8Tla+rQw9Z7nvyXXmyKrEzVi/cjJHzwTemdSw
 c9OC+6pDms2ruebM1ILdxFoShalkHk1gRUW0n7BWPDb7XIGTV+KsG9JeQaKRAMNZNz1ziJ0YBzT
 KeVraCDWTgCaarfFhjhLcWcCSbuZkmJkTGw0OzSGAq0tlA3O7DK13z419Pu9ypNBqCsXV68Lzzj
 ftyj/jRwVSsoZYLyYKvszAMRAXk/5965iXlWnqr32xo/TQG3mMEx5SZXO27TOspj4mpk834DmSp
 QuB34zT2DJASppnFoMfI8w7p2P/TM2aRhbWZLVPafcl+cFZwaAyZ2vrv+uEK9BrMw+/QFUFEsqk
 lqSyo+UgK+CR0rMkQU5ddRciwa+DcMi96wqQGXxZQ3f9UcvLYd+KsLhi2W7F6QP4NNgdNspxZla
 fxTGmErHweVfATh/XvA==
X-Proofpoint-GUID: mG2KNg5NDgB1puUuZjdF-d3cFv3seVLe
X-Proofpoint-ORIG-GUID: mG2KNg5NDgB1puUuZjdF-d3cFv3seVLe
X-Authority-Analysis: v=2.4 cv=LsSiDHdc c=1 sm=1 tr=0 ts=6a1097f4 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=enBp33lU/LGHKDsbTNpoHw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vBFCELq6SH9PKkL908QA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_105253_299338_54F8B80D 
X-CRM114-Status: GOOD (  18.93  )
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

T24gNS8xOS8yMDI2IDY6MDcgUE0sIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3JvdGU6Cj4gVGhh
bmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMSBw
b3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBbSGlnaF0gc2hpa3JhLWNxcy1ldmsu
ZHRzIGluY29ycmVjdGx5IGluY2x1ZGVzIHRoZSBtb2RlbS1lbmFibGVkIFNvTSBkdHNpIGZpbGUg
KHNoaWtyYS1jcW0tc29tLmR0c2kpIGluc3RlYWQgb2YgaXRzIGNvcnJlc3BvbmRpbmcgQ1FTIGR0
c2kgZmlsZS4KPiAtLQo+Cj4gY29tbWl0IGYyNTAwMmQ2YmU3ZWY3NWY0ZjVlMmRkNWYzMmU0NWEy
MmYwNmZjMDEKPiBBdXRob3I6IEtvbWFsIEJhamFqIDxrb21hbC5iYWphakBvc3MucXVhbGNvbW0u
Y29tPgo+Cj4gYXJtNjQ6IGR0czogcWNvbTogQWRkIFNoaWtyYSBFVksgYm9hcmRzCj4KPiBUaGlz
IGNvbW1pdCBhZGRzIGRldmljZSB0cmVlcyBmb3IgdGhlIFNoaWtyYSBFVksgcGxhdGZvcm0sIGNv
bWJpbmluZyBkaWZmZXJlbnQKPiBTaGlrcmEgU29NIHZhcmlhbnRzIHdpdGggYSBjb21tb24gY2Fy
cmllciBib2FyZC4gSXQgaW50cm9kdWNlcyB0aHJlZSBzcGVjaWZpYwo+IEVWSyBib2FyZCBjb25m
aWd1cmF0aW9uczogQ1FNICh3aXRoIG1vZGVtKSwgQ1FTIChubyBtb2RlbSksIGFuZCBJUVMgKG5v
Cj4gbW9kZW0pLCBhbG9uZyB3aXRoIGEgc2hhcmVkIGNvbW1vbiBpbmNsdWRlIGZpbGUuCj4KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FzLWV2ay5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzCj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmVlNDYwZDhjNmE4NzcKPj4gLS0t
IC9kZXYvbnVsbAo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1l
dmsuZHRzCj4+IEBAIC0wLDAgKzEsNjEgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBCU0QtMy1DbGF1c2UKPj4gKy8qCj4+ICsgKiBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hu
b2xvZ2llcywgSW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4KPj4gKyAqLwo+PiArCj4+ICsv
ZHRzLXYxLzsKPj4gKwo+PiArI2luY2x1ZGUgInNoaWtyYS1jcW0tc29tLmR0c2kiCj4gVGhlIGNv
bW1pdCBtZXNzYWdlIHN0YXRlcyB0aGF0IHNoaWtyYS1jcXMtZXZrLmR0cyBwYWlycyB3aXRoIHRo
ZSBDUTIzOTBTIFNvTQo+IHdoaWNoIGhhcyBubyBtb2RlbSBzdXBwb3J0LiBEb2VzIHRoaXMgaW5j
b3JyZWN0bHkgaW5jbHVkZSB0aGUgbW9kZW0tZW5hYmxlZAo+IFNvTSBmaWxlIGluc3RlYWQgb2Yg
aXRzIGNvcnJlc3BvbmRpbmcgQ1FTIGR0c2kgZmlsZT8KPgo+IEluaGVyaXRpbmcgdGhlIGhhcmR3
YXJlIGRlc2NyaXB0aW9uIG9mIHRoZSBDUU0gYm9hcmQgbWlnaHQgbGVhZCB0byBpbmNvcnJlY3QK
PiBiZWhhdmlvciwgc3VjaCBhcyB3YXN0ZWQgcmVzZXJ2ZWQtbWVtb3J5IGFsbG9jYXRpb25zLCBv
ciBwb3RlbnRpYWwgcHJvYmUKPiBmYWlsdXJlcyB3aGVuIHRoZSBrZXJuZWwgYXR0ZW1wdHMgdG8g
aW5pdGlhbGl6ZSB0aGUgbm9uLWV4aXN0ZW50IG1vZGVtLgoKIMKgI2luY2x1ZGUgInNoaWtyYS1j
cW0tc29tLmR0c2kiIGlzIGludGVudGlvbmFsIGFuZCBjb3JyZWN0LiBDUTIzOTBTIFNvTSAKc2hh
cmVzIHRoZSBzYW1lIFBNSUMgY29uZmlndXJhdGlvbiBhbmQgdGhlIHNhbWUgcmVzZXJ2ZWQtbWVt
b3J5IGxheW91dCAKYXMgdGhlIENRTSB2YXJpYW50IGJlY2F1c2UgdGhlIG1vZGVtIHByb2Nlc3Nv
ciB3b3VsZCBzdGlsbCBicm91Z2h0IHVwIG9uIAp0aGUgQ1FTIHRvIHJ1biBhdXhpbGlhcnkgc2Vy
dmljZXMsIGl0IGp1c3QgbGFja3MgdGhlIFJGL21vZGVtLXBlcmlwaGVyYWwgCmhhcmR3YXJlLgoK
VGhhbmtzCktvbWFsCgo+Cj4+ICsjaW5jbHVkZSAic2hpa3JhLWV2ay5kdHNpIgo+PiArCj4+ICsv
IHsKPj4gKwltb2RlbCA9ICJRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gU2hpa3JhIENRUyBF
VksiOwo+PiArCWNvbXBhdGlibGUgPSAicWNvbSxzaGlrcmEtY3FzLWV2ayIsICJxY29tLHNoaWty
YS1jcXMtc29tIiwgInFjb20sc2hpa3JhIjsKPiBbIC4uLiBdCj4KCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
