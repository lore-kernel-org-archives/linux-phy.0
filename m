Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C33ABE81BAD
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cd/u6duqiKLVpjUN0Po2vupiuNRAFuZ5ICW0QNGotI=; b=l4VT5qxGq4SC7J
	QDXg2gqdCmmwb6GC2dyE4OLI0XafhsK/maYY6UTAnMx7tOReslkDg2pwKXmwTB0FlS36IGlIJOUzO
	SUqUNknu5baU6mZmW32tglAneNeqKASSbbkBAIpWHZ7pw0ZmD7doP9j+bg6rUHtyedeacLBABb0Sv
	hJeUsXroCBOUnRdlTByIqbzJErNfx12u9bC801BBl8LXPs4khVIHQb2W1aAZv5hpXSFGGKVBR1xld
	AsNMKnRXeuh8C6rUOynsYdZdSp+HNRdJFI4e9BqHbDiPe3kZTaU9I+3eBnJPmcto6yZG2yStP2vGU
	8ypksTJJolkz4lAPZsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQej-0000000FO3I-4BFC;
	Mon, 09 Feb 2026 12:46:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpQeg-0000000FO22-43qK
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 12:46:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619B2hEb2587044
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 12:46:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ntkupio6zcUD3ZHPYQlWxMbSJITTn30CMZLbiUVXeDw=; b=g9jNFCZAhREb6/bG
	PbaXB0QBoDAavm2sCLSzwq+SIeY2KcUcqiIRwCyVQR8nCuJga1nTvFgiy5zSRm3K
	9Sbc4H9BHSLPfnIVo7xepNHD6ELBZJubqYoqqmu0aZRnIBWoULDeo7jXY29ity1L
	yS37z4DqjJvTm7jFgbHGU3VDop6fsV2q15WxahFEWErIWntDF5/loHiRlZ6aa5Hk
	GI7TAAFbpitEBvC3jAfd9vYWiZQ8gQRnGrHBUd6EJfW2vvallaXDJK6j33iOAUMt
	GOvc7q2rGwO5vf9pPnFE3/NYQmg9vPVxFE6F9ghVz4NzwxuZdsIDsayqRxJJjMuY
	Ux1k2A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c793bhg3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 12:46:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb0595def4so752434885a.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 04:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770641176; x=1771245976; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ntkupio6zcUD3ZHPYQlWxMbSJITTn30CMZLbiUVXeDw=;
        b=EBfaOtqQV7qWCQQXT9BVBebkHgMfz3+wLIwUP0seeVL9EchaXmavoaI0rbvd1LK1yN
         xNwj6rqvIUKwA232CMo80T4oYQ3a2Lm/uBBol7bF9k7PKmb94mkH1yaWELS0jIm4XIEZ
         Mz8+3++F4QNN/AQ8LVIV0rSzI5/lctvES5E2VO5WWBI7WrfEijJYyC7aKiTRbQKoSitL
         OlVg4KsP5oKDMjLmMq4slDHgW54qP11k4vOCSXesktXTrtXNfWB3PoKCj+Fps2HL+6li
         e6uwbmNV+tstyYD902MwRMsNC9r/v8tFFrcgih3NkxW5A0t7cS9D9o7ZDn7JOG3LNMBl
         sMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770641176; x=1771245976;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ntkupio6zcUD3ZHPYQlWxMbSJITTn30CMZLbiUVXeDw=;
        b=WKemU685NwkEeGbuFDjqkx8/0ho51fvPMIa2ao1KeBdDEGiLWBvzMe7hQFMgReg56G
         X4/Fut1JyTFTB36p8OM0V5+jB4lsfmYeRxZZfuCzhoHqhaFui52QlH98Nxr2e+C2jMgv
         bcBYmS3nBMsutEHmdmeRkic5Akr0YvmtDMGb6RwlSNFUuQsZlGtCholZ4VxB2MDnLsX4
         RREwha5wQDrAZKCzNys+yrloL0MUYKGusHJH4wznVHCAB0+rmRlgKPCs7eC8rn9INjWY
         k3PGFHE8r0wqr5hP8zCRdcsWpoeNCrXsuvMvVZki5cM9nKMk6NBAXRMCDm/SozUJ9Lec
         8E/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWg3om5tTAWVXa5iOl0wqIlAP14pZ7batP9/2W3pTmPWrIQzOE3YOzMudDgkmc2u/Frdjrhn7bBGPc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzYHAi9RvcwHgZehEWjQlgzSW3vZJ5gQjA6NBneKNH6FVm9Fkk
	TzjeY5iS0bV/0aBqaw8USsxESze6EoA2ixLULfOR4pqdYdS0kH//ctAQ68NRtrw9SoKKgOKD2Jz
	4ihakrxTD8wh5BYPtYqjE+RCa69nW9XjOjozoGdUz6ndamWwmXc0kb3SW/agpXCwqFXBU
X-Gm-Gg: AZuq6aJQCHu+e9tTHPW4v+/mCRzClLCWVf6eChThNue2yGOwSUXGKeq/DV4aYq0iYLi
	bQzxP6P9j5ap9VJ/cUwIJcxDHw7zYAYqMznmkpwTB9vKSBtS3P4F/ATF9yVPj76RvncuNR9Az/i
	5N+dqjo3fN3zdgbKSKUzidartBf37DMX6UqcG4eVGhrdb2OPcFVuh7UlclVOinFOcPcHTkjAvgp
	mbqqqWtL5OmAqX/BBkI8+eVLVs36Py0LA9x9OLAOFLqRBiltwU6FC6mk7q9X3o3CAu4Odta/4sl
	CKsL1QPL3ejmpFExPldliQ2nSp9d4LWXJlgJUycwWLZgkxKvTDpbXPfSqKe/LItUm+2FXED6KGh
	pnX/vq2DSU4VelYwrRpXS44m1no5Xy5eehdBG1wo7KTqsv9mW63m6LJL3WxJK93dntgvcVr+NH0
	A1m+BQNv0/N+e8jpGWiCAhzotyWosRIfeoNrA=
X-Received: by 2002:a05:620a:44c7:b0:8c5:32a0:3421 with SMTP id af79cd13be357-8ca40b908bemr1976891085a.16.1770641176560;
        Mon, 09 Feb 2026 04:46:16 -0800 (PST)
X-Received: by 2002:a05:620a:44c7:b0:8c5:32a0:3421 with SMTP id af79cd13be357-8ca40b908bemr1976888685a.16.1770641176112;
        Mon, 09 Feb 2026 04:46:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b63b041dsm25669091fa.24.2026.02.09.04.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 04:46:15 -0800 (PST)
Date: Mon, 9 Feb 2026 14:46:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo
 PHY configuration values
Message-ID: <36ourp7swd36ptbal2gd7byrppownihbpkkxvocd44u7zddc4f@igo5h4yhbxs4>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
 <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ctOWUl4i c=1 sm=1 tr=0 ts=6989d719 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=jmIFWC6BSrKBpW1Fwx4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: WPsJ5JToMI8zwXtolIIaIWiuf47dsFlF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDEwNiBTYWx0ZWRfXwqZ7Ekuoasqh
 8D6ugv3FmAyaKp50NB5uAyYpkZYWR1e0N2vfugGH7Oh2wxauPvibcNYnQhYdBr45tgN56bWEgMw
 3IjiBiNIqAlOAqo8GsKdTxubbfm3fEoRXj7hD2SEs2BxM9xbqjCpw4n8xalOMVUiToMIAk3CFbC
 7ujtlnxbd9zoAh+f1vQeWRvtQ25RGr8doxrQt0ffQrK54f1idTloPk7iY8qNr611OmvAGi5z5JE
 CMowoMotUoLPXQYarx5gP2W3Y6x7EQD5n3wHsIIWoxRySgSNIFX4j1mnJVIY27YOHVIoz14RTJd
 D9GPlzmTou0LkUTMTYotXPjTNGOBwzHf7l1WzSCwOOkq+k5t9pfcF2Sj1yqAIa4X72Wm512Pq9r
 rLTp3BGgGnVfohY2ydq++wcKnaIJz2PCpCqKdLtsz0kqCUmGIwWroNJLvC+9XG6eI5dxX3GyjvX
 aiGObMRxjKFTDFCRfaQ==
X-Proofpoint-GUID: WPsJ5JToMI8zwXtolIIaIWiuf47dsFlF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_044619_150583_B443F268 
X-CRM114-Status: GOOD (  26.67  )
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

T24gTW9uLCBGZWIgMDksIDIwMjYgYXQgMDU6MDA6MDNQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDIvNi8yMDI2IDY6NDcgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4g
PiBPbiAyLzUvMjYgMTA6MjAgQU0sIFlvbmd4aW5nIE1vdSB3cm90ZToKPiA+ID4gQWNjb3JkaW5n
IHRvIHRoZSBjdXJyZW50IEhQRyBzZXR0aW5ncywgbW9zdCBlRFAvRFAgY29tYm8gUEhZcyBjYW4g
cmV1c2UgdGhlCj4gPiA+IHNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCj4gPiAKPiA+IEV2ZW4g
YWNyb3NzIHRoZSB2YXJpb3VzIHByb2Nlc3Mgbm9kZXM/Cj4gPiAKPiBFbW0sQ3VycmVudGx5LCBJ
IGhhdmUgb25seSBjaGVja2VkIHRoZSBmaXZlIHBsYXRmb3JtcyB0aGF0IGFscmVhZHkgaGF2ZSBl
RFAKPiBQSFkgZHJpdmVyIHN1cHBvcnQgZW5hYmxlZC4gVGhlIHJlc3VsdHMgYXJlIHRoZSBzYW1l
IGFzIHN0YXRlZCBpbiB0aGUgY29tbWl0Cj4gbWVzc2FnZTogaW4gRFAgbW9kZSBhbmQgaW4gZURQ
IGxvd+KAkXZkaWZmIG1vZGUsIHRoZXJlIGFyZSBmb3VyIHBsYXRmb3JtcyB0aGF0Cj4gY2FuIHJl
dXNlIHRoZSBzYW1lIHNldHRpbmdzLiBUaGUgSFBHIEkgdXNlZCB3YXMgdGhlIG9uZSBJIGZvdW5k
IG9uIElQQ0FULgo+IFJlZ2FyZGluZyBIUkcsIHBsZWFzZSBtb3ZlIHRvIG5leHQgY29tbWVudC4K
PiA+ID4gRFAgbW9kZe+8mgo+ID4gPiAJLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAw
Cj4gPiA+IAktZ2x5bXVyCj4gPiA+IGVEUCBtb2RlKGxvdyB2ZGlmZik6Cj4gPiA+IAktZ2x5bXVy
L3NhODc3NXAvc2M4MjgweHAveDFlODAxMDAKPiA+ID4gCS1zYzcyODAKPiA+ID4gVGhlIGN1cnJl
bnQgZHJpdmVyIHN0aWxsIGtlZXBzIG11bHRpcGxlIHZlcnNpb25zIG9mIHRoZXNlIHRhYmxlcyBh
bmQKPiA+ID4gZG9lc24ndCBmdWxseSBzdXBwb3J0IGV2ZXJ5IGNvbWJvIFBIWSBtb2RlLiBUaGlz
IHBhdGNoIHJlbW92ZXMgdGhlCj4gPiA+IHJlZHVuZGFudCBjb25maWdzIGFuZCBrZWVwcyBvbmx5
IHRoZSBzZXRzIHdlIGFjdHVhbGx5IHVzZSwgbWF0Y2hpbmcgdGhlCj4gPiA+IHBsYXRmb3JtcyBs
aXN0ZWQgYWJvdmUuCj4gPiAKPiA+IEkgc2VlIHRoYXQgZS5nLiBlRFAgTG93LVZkaWZmIHN3aW5n
IHNldHRpbmcgZm9yIFJCUiBpczoKPiA+IAo+IEhpLCBkbyB5b3UgbWVhbiBlbXBoYXNpcyBzZXR0
aW5ncywgaSBkb24ndCBzZWUgMHgxMQkweDEyIGluIGFyclswXVsxXS4KPiA+IAkJaGFtb2EJa29k
aWFrCj4gPiBhcnJbMF1bMV0JMHgxMQkweDEyCj4gPiAKPiA+IEl0IG1heSBiZSB0aGF0IHRoaXMg
Y2hhbmdlZCBsYXRlciBkdXJpbmcgdHVuaW5nIGJ1dCBpdCdzIG5vdCByZWZsZWN0ZWQKPiA+IGlu
IHRoZSBkb2NzIGZvciBrb2RpYWsKPiBFbW0sIGlmIHRoYXQsIHdoZXJlIGNhbiBpIGdldCB0aGUg
Y29ycmVjdCB2YWx1ZSBmb3IgdGFibGVzLi4gSW4gdGhpcyBwYXRjaCwKPiBJ4oCZbSBpbmRlZWQg
cXVpdGUgY3VyaW91cyB3aHkgdGhlIHZhbHVlcyBiZWZvcmUgdGhlIG1vZGlmaWNhdGlvbiBkaWZm
ZXIgZnJvbQo+IHRob3NlIGluIHRoZSBIUEcuIEnigJltIG5vdCBzdXJlIGFib3V0IHRoZSByZWFz
b24uIFRoZSBIUEcgSSB1c2VkIHdhcyB0YWtlbgo+IGRpcmVjdGx5IGZyb20gdGhlIGN1cnJlbnQg
Z28vaXBjYXQuIENvdWxkIHlvdSB0ZWxsIG1lIHdoZXJlIEkgY2FuIG9idGFpbiB0aGUKPiBmaW5h
bCB0YWJsZSB0aGF0IHNob3VsZCBiZSB1c2VkPwoKVXNlIHRoZSBIUEcgd2hpY2ggbWF0Y2hlcyB0
aGUgY2hpcCBnZW5lcmF0aW9uIC8gY29kZW5hbWUuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0
cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
