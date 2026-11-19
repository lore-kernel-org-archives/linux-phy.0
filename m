Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2502606A326
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 22:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t8rsNUEP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XO9m6vCM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Xs8r+T4M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=P6SPoAGMonmly9TX/AqP2j3I8xny5yqcyjpyeeYNBW4=; b=t8rsNUEP4kDmPX9GQeKI+NkxWe
	g71p6Sr0AK0FDY5RGk3lKf3EjZFUIu6oW5VcMl8XIq2KwuhMRWdPkpIKCOiA6uMI9J2SPR0cefelA
	iXoDdLRxFSms/GlK22Zj0xtLbcvUj4GHhe/9hpqF5UF92EknZ57g8YKpy9cUonj6mXXP1ziPq5cBc
	xYamItAM784UfWO1c9MfuyqWN9SMqUdQKOhTLusCEI5ArbAYOHUOKqEqClGSDGnnZYTTulLQ11c+o
	jMh2MhtCrvMy2/Su9GNHRV+4DxfYkmwpXVYDj6cGoV8Hlu+T6ZVUtbf7LDTDqPITxhcsM9hkuCnrI
	4EYKCm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUAhO-0000000DZtS-1bR3;
	Thu, 19 Nov 2026 22:33:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUAhL-0000000DZt0-2vmL
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 22:33:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AJJ1G31373540
	for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 22:33:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9unBBVCj1rq1r5sgWlat61FGRZjlRLyVT52MoM6b320=; b=XO9m6vCM8dsgttD+
	J51Z36XvWNDtPwwKtOzn2MRz2fT0txoRaiBABAOlVqf4XWgko3WVEuoiiuT5j7HM
	s+1QpQElaDueDqck7SiDBwKTb/FMnNcd8RV0igtcqz6xVdBhE1tlYsQV2IuVlj+3
	N3x40KGeIcKo+0yygDSkV9Rg9Hi6bJQxsJm0/n25l9NmWg+1BNEY9fN25RSr5aki
	0EEdYbWPI3AK9ZypwbTZoHei2HJ+bKt44PgM1C/dr96KM5yv64eKB6aVHjLCRYba
	GcHdlnDAsBvhLVC9+1Z5UJWMUH+I6/li0xYj9jVZ31TdvzKJvlUZK2QlS8oCoIGB
	OsWOIw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j1xymke39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 22:33:42 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3846d5f54c1so243943eec.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 14:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795127622; x=1795732422; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9unBBVCj1rq1r5sgWlat61FGRZjlRLyVT52MoM6b320=;
        b=Xs8r+T4M4LBOQoZ398vPn/e+qA3bhFM/4V7SE8mMyID0rIi8tUX5AO8RMy6PIWhoDB
         BcAdMtzmZCdEGd8aLkMrXg9U9YhoJfIrrACX/XRCfnfrMXpbVVWTr6WQ/sFCUBxK1sgg
         wdYxkl5Ejg4GUK8bEOLKD508sckt2Vbi8UDMruZIIAjTqkE6zG4pK/C5bCt3lWdOesIL
         f3s8a7u0Tc9M48YAemmB4mlzdwM3PR4f0jGZvpqB+xpICWupSm1cEN1Uf3WIXWBVX0Wv
         t4uFL9l+PpizYYmB9OGmANz2r7fHwkQj0y9TzDf2UU4f88ix8ej9su6JEWtLWsxb5pFH
         fDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795127622; x=1795732422;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9unBBVCj1rq1r5sgWlat61FGRZjlRLyVT52MoM6b320=;
        b=DXolOCHXlDH+ODP8HaQQZhx3XUNWdNZ55x+2qPjb35H1y5R0HJepqSxXmFQwfWdT8w
         cpFn2A82j6GQBvxIlvU31xE/YYPe41j5vNSinbbcAy7Cn2ts1k9wPle4IzkE6jawct0o
         4SxZTg5gggYVzQYACPFXzvcAd9ryjX0M6xwyAN79LDWQ3Dy6DyAdxhNxh2KYJ6yk1isX
         VWaTQsnK1PG004uGxeBAjk3zpAF9DwN5onOVAqDeqgEyspSIku0uiGOg+sU5srO7og1T
         Bx21xQBdLOJRDUyaZPANBkwTU02EcwbgKyGa6/3fO0264nInzeLSh1BWRgUU+Vkcu+CM
         cw8Q==
X-Forwarded-Encrypted: i=1; AL+hErER/iGFpvzZiWTikCU27hZztX/AeWs+lM+Q/rEIxTbWpS08PSvrHPU6d/1HsNgOCyHpVfW9lnDbXXs=@lists.infradead.org
X-Gm-Message-State: APuU4Z+eBRju0tvjiIP0mvsMqeo1iOpVqSDMWDZAsFKZ3faDp/f1cEke
	s3KbAnrnCf8cJNqVmaMOriOCF2gvoAqcxj6FIv7hBYRd8LawGgnN8oKabtxOXwkDoblsfEWPEWp
	O4RCVrl2FVlXFTSF3ahXXosF3350z52naOnFTXiJdu6u4JslhTTF7jtq41h/3jWS5Ys61
X-Gm-Gg: AYBFou14ziJPwhswL+vsh6IBfKlTnwLh7jInuMgH9fhMynIMTSoCtaLZ4UATu9yzcRX
	KphYGlCHNRH4r7PTJ5OWEhAlx5YghOJq+Y0F5l066gbkwEMPTLprJwgtX7d2JEsBECP5MlJEFN+
	AnYRljfh+TOfmoecJebHgeq7zDphHmgXY7P/NhnYxJb95plUq6aI3Avpk+Jlf4ZOp92Djz8XSvi
	YFE2nNI69kf/TkyLkg/u5IdTRt5WPyX409dkAQYr76f1DwQu9xcpgR83AHqAMSo6ZrBeLL/c9rg
	VwJOh9XYqcMVL53lgM1rzMTylgzAXRkydDtL1F5EdyESTaAHy6DElMeQ029mcSEd06bbpNdfNzn
	bm3bDkXyzYuPr3t27Gd+TCJvD6QGQwGc/CSazECh0UT++SHlJySwpUfOdriLHj7qEMMtk0uPy3q
	W1Eo/U0N5ww/5brn4gbw999s14EvCWbRj8fsU=
X-Received: by 2002:a05:693c:860a:20b0:384:fe97:8cd9 with SMTP id 5a478bee46e88-3857102771amr822975eec.34.1795127621822;
        Thu, 19 Nov 2026 14:33:41 -0800 (PST)
X-Received: by 2002:a05:693c:860a:20b0:384:fe97:8cd9 with SMTP id 5a478bee46e88-3857102771amr822943eec.34.1795127621289;
        Thu, 19 Nov 2026 14:33:41 -0800 (PST)
Received: from [10.71.186.214] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385666e7fc3sm1494360eec.8.2026.11.19.14.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2026 14:33:40 -0800 (PST)
Message-ID: <564e8e85-3991-4ec7-afc3-317dc8732a4a@oss.qualcomm.com>
Date: Thu, 19 Nov 2026 14:33:39 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Reg: Re: [PATCH RFC 0/6] phy/media: Add generic MIPI C-PHY
 support to CSI-2 stack
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Cc: anusha.nandi@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com,
        wenmeng.liu@oss.qualcomm.com,
        Vikram Sharma
 <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        hangxiang.ma@oss.qualcomm.com, vijay.tumati@oss.qualcomm.com,
        udayc@quicinc.com
References: <d78ab29e-8751-4356-a801-d56d3782abb9@oss.qualcomm.com>
 <3e8ad5f6-fdb2-41d3-a944-3f3fd378e657@linaro.org>
 <6ec4c83c-cdca-4137-9de3-81abed60dbb3@oss.qualcomm.com>
 <c9271d11-b5de-4a05-9214-8bfe5a6ccf9b@oss.qualcomm.com>
 <09896b0c-b670-4d34-82f9-1e880a9cc188@linaro.org>
Content-Language: en-US
From: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
In-Reply-To: <09896b0c-b670-4d34-82f9-1e880a9cc188@linaro.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE5MDA5MCBTYWx0ZWRfX7W9DzRnCBL2j
 EjU0Znrl0oOekr5Hv1K6bFozVW/SpomOQ+523g1wVmTswvpCQmONYl4Qc6y/iWtsDtZL7scdOvQ
 LZ/yn1Yov/rgLF34vEfnwHxHvXRZ260=
X-Proofpoint-GUID: Y4FNwBtdGzdRnwaNi_wNFjrEDMfMhAdi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE5MDA5MCBTYWx0ZWRfX/ugl24Sf69Ka
 ZsUW+p+WUL+kw31JBl+RaEAG4B6FE+zUoZFHi/ArCBv8/Blv9G3Zn3pEc9pi6E6iJMHcUk2NR1w
 Cbg1eP/OqH0/DtHrdClfQs5g8KFhucGNEk6iBL+JuOOH09A2RnyfPepuLdNOLwnF4DZotJ8w1wR
 ZlyYEfGEoUHZyjRam31QioZ8fJjHeJD0YaLzMDVchbXoqH68CKd9//ZEq2+L+/IUB5ZDnoF6mwF
 3resypab1VY4PAIdVTmp3/Fs/mNGVsjxlqIKdXP168V8/1nk/UTpxL+uLWKPSyYuErO6Ow8p7TD
 obmAUz3kVeImCU56/p+nxfCckLO2KTTdBbZdNU1Zpp32FWVjy3e32AwycnOh30EWJAwiJtCPV7J
 SEHfkYotfYaqPo1TiESF+LPX2Xuxis5mkjpYPze6rPpiWl5ER4gd3KIRTh0C9dKf8SiRql7f7IQ
 CnNgSKld9pNjJllLz/Q==
X-Proofpoint-ORIG-GUID: Y4FNwBtdGzdRnwaNi_wNFjrEDMfMhAdi
X-Authority-Analysis: v=2.4 cv=WKPqzXsR c=1 sm=1 tr=0 ts=6aff7946 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=JvcaA5m-eIxXtVPHYhwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-19_05,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611190090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_143343_741717_58BCCBAD 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQnJ5YW4sCgpUaGFua3MgZm9yIHRoZSBmZWVkYmFjay4KClRoZSBvcmlnaW5hbCBwcm9wb3Nh
bCB3YXMgYSBsaXR0bGUgZGlmZmVyZW50IGZyb20gd2hhdCB3YXMgc2hvd24gaW4gdGhlIApkaWFn
cmFtLiBUaGUgaW50ZW50IHdhcyBmb3IgcGh5LXFvY29tLW1pcGktY3NpMi1jb3JlLmMgdG8gYWN0
IGFzIHRoZSAKaW50ZXJmYWNlIHdpdGggcGh5LWNvcmUuYywKd2hpbGUgdGhlIGZ1bmN0aW9uYWxp
dHkgd2hpY2ggaXMgY3VycmVudGx5IGluIHBoeS1taXBpLWNzaTItM3BoLWRwaHkuYyAKd291bGQg
YmUgZ2VuZXJhbGl6ZWQgYW5kIHJlbmFtZWQgdG8gc29tZXRoaW5nIGxpa2UgCnBoeS1taXBpLWNz
aTItY29yZS11dGlscy5jLCBhbmQgZXh0ZW5kZWQgdG8gc3VwcG9ydCBhZGRpdGlvbmFsIFBIWSBt
b2RlcyAKYmV5b25kIHRoZSBjdXJyZW50wqAgRC1QSFkgaW1wbGVtZW50YXRpb24uCgpIb3dldmVy
LCBiYXNlZCBvbiB5b3VyIGNvbW1lbnQsIHdlJ3JlIG5vdyBjb25zaWRlcmluZyBhIHNpbXBsZXIg
CmFwcHJvYWNoLiBSYXRoZXIgdG8gbWFpbnRhaW4gTW9kZSBzcGVjaWZpYyBvcGVyYXRpb24gaW4g
Y29yZS11dGlscy5jIGZpbGUsCndlIGNvdWxkIG1lcmdlIHRoZSBjb21tb24gZnVuY3Rpb25hbGl0
eSBmcm9tIApwaHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYyBkaXJlY3RseSBpbnRvIHRoZSBl
eGlzdGluZyAKcGh5LXFjb20tbWlwaS1jc2kyLWNvcmUuYyBhbmQgZXZvbHZlIHRoYXQgZmlsZSB0
byBzdXBwb3J0IHRoZSBkaWZmZXJlbnQgClBIWSBtb2Rlcy4KClRoZSBQSFktc3BlY2lmaWMgcGll
Y2VzIHN1Y2ggYXMgcmVnaXN0ZXIgZGVmaW5pdGlvbnMsIG1vZGUtc3BlY2lmaWMgCmNvbnN0YW50
cywgYW5kIHJlbGF0ZWQgZGVmaW5pdGlvbnMgY291bGQgdGhlbiBiZSBtYWludGFpbmVkIGluIHNl
cGFyYXRlIApoZWFkZXJzLCBmb3IgZXhhbXBsZToKLS0gcGh5LXFjb20tbWlwaS1jc2kyLWRwaHlf
cmVncy5oCi0tIHBoeS1xY29tLW1pcGktY3NpMi1jcGh5X3JlZ3MuaAotLSBBZGRpdGlvbmFsIG1v
ZGUtc3BlY2lmaWMgaGVhZGVycyBhcyBuZWVkZWQKCldpdGggdGhpcyBzdHJ1Y3R1cmUsIHBoeS1x
Y29tLW1pcGktY3NpMi1jb3JlLmMgd291bGQgY29udGFpbiB0aGUgY29tbW9uIAppbXBsZW1lbnRh
dGlvbiBhbmQgZGlzcGF0Y2ggdGhlIGFwcHJvcHJpYXRlIG9wZXJhdGlvbnMgYmFzZWQgb24gdGhl
IApzZWxlY3RlZCBQSFkgbW9kZSAoRC1QSFksIEMtUEhZLCBzcGxpdCBtb2RlcywgZXRjLiksCmF2
b2lkaW5nIHRoZSBuZWVkIGZvciBhbiBhZGRpdGlvbmFsIGludGVybWVkaWF0ZSBzb3VyY2UgZmls
ZSB3aGlsZSBzdGlsbCAKYWxsb3dpbmcgdXMgdG8gZXh0ZW5kIHN1cHBvcnQgZm9yIGZ1dHVyZSBQ
SFkgY29uZmlndXJhdGlvbnMuCgpXZSdsbCBwdXQgdG9nZXRoZXIgdGhlIHByb3Bvc2VkIHBhdGNo
ZXMgYW5kIHNoYXJlIHRoZW0sIHdoaWNoIHNob3VsZCAKbWFrZSB0aGUgaW50ZW5kZWQgc2VwYXJh
dGlvbiBiZXR3ZWVuIGNvbW1vbiBhbmQgbW9kZS1zcGVjaWZpYyAKZnVuY3Rpb25hbGl0eSBjbGVh
cmVyLgoKVG9wIExldmVsIGFyY2hpdGVjdHVyZSB3aWxsIGxvb2sgbGlrZSBiZWxvdzoKCiDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNhbXNzLmMKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIHwKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHYKIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcGh5LWNvcmUuYwogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfAogwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgdgogwqAgwqAgwqAgwqAgwqBwaHktcWNvbS1taXBpLWNz
aTItY29yZS5jCiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBeCiDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCB8ICgjaW5jbHVkZSkKIMKgIMKgIMKgKy0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLS0tLS0tKwogwqAgwqAgwqB8wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiDCoCDCoEQtUEhZLmjCoCDCoCDCoCDCoCDCoEMt
UEhZLmjCoCDCoCDCoEZ1dHVyZSBNb2RlcwogwqAgwqAgwqB8wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB8wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiDCoCDCoCDCoCstLS0tLS0t
LS0tLS0tLSstLS0tLS0tLS0tLS0tLSsKIMKgIMKgIMKgIE1vZGUtc3BlY2lmaWMgcmVnaXN0ZXIg
aGVhZGVycwogwqAgwqAgwqAgwqAgcGh5LW1pcGktY3NpMi1kcGh5X3JlZ3MuaAogwqAgwqAgwqAg
wqAgcGh5LW1pcGktY3NpMi1jcGh5X3JlZ3MuaAoKCkJlc3QgUmVnYXJkcywKCkppZ2FyCgpPbiAx
MS8xOS8yMDI2IDE6MTIgQU0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMTkvMTEvMjAy
NiAwNjozNywgSmlnYXJrdW1hciBaYWxhIHdyb3RlOgo+PiBIaSBCcnlhbiwKPj4KPj4gQXMgcGFy
dCBvZiB0aGUgQy1QSFkgZW5hYmxlbWVudCB3b3JrLCB3ZSBhcmUgdGhpbmtpbmcgdG8gb3JnYW5p
emUgdGhlIAo+PiBQSFkgZHJpdmVyIHN1Y2ggdGhhdCB0aGUgY29tbW9uIGZ1bmN0aW9uYWxpdHkg
aXMgY29uc29saWRhdGVkIGludG8gYSAKPj4gc2hhcmVkIGltcGxlbWVudGF0aW9uIGZpbGUsICpw
aHktbWlwaS1jc2kyLWNvcmUtdXRpbHMuYyosIHdoaWxlIAo+PiBrZWVwaW5nIHRoZSBQSFktc3Bl
Y2lmaWMgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgc2VwYXJhdGVkOgo+Pgo+PiDCoCAqICpwaHktbWlw
aS1jc2kyLWRwaHlfcmVncy5oKiDigJMgRC1QSFkgcmVnaXN0ZXIgZGVmaW5pdGlvbnMKPj4gwqAg
KiAqcGh5LW1pcGktY3NpMi1jcGh5X3JlZ3MuaCog4oCTIEMtUEhZIHJlZ2lzdGVyIGRlZmluaXRp
b25zCj4+IMKgICogKnBoeS1taXBpLWNzaTItY29yZS11dGlscy5jKiDigJMgU2hhcmVkIGNvcmUg
aW1wbGVtZW50YXRpb24gYW5kCj4+IMKgwqDCoCB1dGlsaXRpZXMgdXNlZCBieSBkaWZmZXJlbnQg
UEhZIG1vZGVzCj4+Cj4+IENvbmNlcHR1YWxseToKPj4KPj4gUGxhaW4gVGV4dAo+Pgo+PiB8ZHBo
eV9yZWdzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoGNwaHlfcmVncy5oIMKgwqDCoMKgwqDCoFzCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvIAo+PiDCoMKgwqDCoMKgwqDCoMKgXMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyDCoMKgwqDCoMKgwqDCoMKgXMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAvIMKgwqDCoHBoeS1taXBpLWNzaTItIAo+PiBjb3JlLXV0aWxz
LmMgfAo+Cj4gV2UgYWxyZWFkeSBoYXZlIGEgcGh5LW1pcGktY3NpMi1jb3JlLmMgZmlsZSBzbyB3
aHkgZG9lcyBpdCBuZWVkIHRvIGJlIAo+IHJlbmFtZWQgPwo+Cj4gWzE0MV0gJSBscyBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTIqLmMKPiBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYyAKPiBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1taXBpLWNzaTItY29yZS5jCj4KPiBJIHRoaW5rIGFueXRoaW5nIHRoYXQgbmVlZHMg
Y29uc29saWRhdGlvbiBzaG91bGQgZ28gaW50byB0aGUgZXhpc3RpbmcgCj4gY29yZS5jIGZpbGUg
LSBJIGFsc28gc3VzcGVjdCB0aGVyZSBpcyBzdGlsbCBhIHVzZS1jYXNlIGZvciAKPiBwaHktcWNv
bS1taXBpLWNzaTItM3BoLWRwaHkuYyBhbmQgcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1jcGh5LmMK
Pgo+IEJ1dCBpdHMgaGFyZCB0byBjb21tZW50IG1vcmUgd2l0aG91dCBzZWVpbmcgd2hhdCB5b3Ug
Z3V5cyBhcmUgcHJvcG9zaW5nLgo+Cj4gLS0tCj4gYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
