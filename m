Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604CC606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 04:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JIubLn+3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Jrp9PEbO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gZsTF0OP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0h8gRwSp7CssNZ6lE6af8Rt+XQzFxgXBFgw7bwgtpg8=; b=JIubLn+3f0C4tWzOg90lhnuBz5
	5y1dk1SCZlOo7Z4tcgHjCiDsigwtHmZ2ip8QbDsn4qGSMNZErWAlZn8Js7mRN/k7VRPb3s7JE7O5U
	g7YFP0zZ5Qr5iLEO4H6VDGoDLJ9eOtrBtqWT/8ACMHurr28oBeIaT5Wf1MQIYyxU2FXDpzR89UKs1
	NcXU+Y/wXUUjj3UtIgcdHVh5x8vZySoIu/EyazBUvbm5HdEJKrWE57feJSLlDqkS1RWFqzJ/RQzYE
	0zdGdeP2D3MFLbjQ1poSWKXrTyDCZ8yCSD9wK38QGD50qtCTlNmC7fn1Bpg9RSUlQfSXf4pM0Ltue
	l533JtVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYVO-00000003jN3-0Uwe;
	Tue, 27 Oct 2026 04:09:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYVL-00000003jMg-3PJ9
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 04:09:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R2F8i4818575
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:09:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vY8JNXJBEmY2//YzxHAKXEJvbfSWEbX5W88WIsAUIF4=; b=Jrp9PEbO8E+rTtwv
	XSkewXOHXjc+TWaVhnoZ6nf4ZFtVGFBK04sY3ZiyxEbIQRfaKny46gNp0YUwTvuu
	NYUuzhAOIAxEngvKL/cB1c0SuThts2znYxF/8dAqY6NSmSTJV6RBC03UQzSi0oo+
	xMVUhiq3Cedqt2kcG1gP3BlcqSwgeFlTTnr4zKbVuipNHQRqCCGI0fOptXrg1huv
	syhhbPeratSZ+7dDB85YuLBtIRcQHMkmx/J3VNm/MFln9x4u5dr5Wo+/CRqiZCZq
	dH6LHfqmNInKqB1LpQlk1BFlCd9rsMC7SD7fFeKyrJeEGLCdl5ch4ya/i0qt4C7X
	Bh1ZPg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj56y3hcg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:09:42 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c82cf2652dso1072056e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 21:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793074181; cv=none;
        d=google.com; s=arc-20260327;
        b=nOcLwCcEp5SXR8auPNTm8euCuWpp2E/UZiUtDqzTCjwMdvjQHM/sHRs5e6G3DlAf7y
         jeMJCYkxsOmJKTlvIN+zotwJjbZ4JlJ7NFqF9QxaKPATOR1sLT8fzHQQ7gE/WX19LBOI
         25Wl7OPWfxNYLOCqLnrKCGVxVQaZ5FaGmqCehqo4nN/W4k/K7Jk7C1WLZX/HqlzBeNgO
         SvqbTMTDmmDvBcGvDgcNxBYKAFV5fGih0IF10DUgoiQ/6xHN0TAfeT7tvr6oi3orGNgv
         GibYXqfNfXjC3fxYcKbeiDbYoWPbUZrjcb1JAEvW4VU/2ozfFHtQF8MUfzkD1nWU/hv9
         7fNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vY8JNXJBEmY2//YzxHAKXEJvbfSWEbX5W88WIsAUIF4=;
        fh=UyHyEU3yBEBXuX+ozK0cHcO1TToFGn0GqgQube/woGM=;
        b=DKLn6v3qwWMa+Pab4W9wx32j88biCJgXiGRJJkUzEu/e8CRkA2NxRUoSmqMQ/NGC5T
         PQrY6FZ7uJVffY7Uz0P19f4DDVmtD6zmEflyAH6/K9+aU61G/m7IUAtQsxOeSrmRLH+u
         RoBORBv6QDCJTk2duZyHE0HJHcixoF28Ky3n4tyvwzQ8L+uiD12dzNrPnbxINTl1I1bj
         cVlOZhxC2UWxqNDjexspqRTek40wuSoHnVGWo8eNm6TM0JCjQlScGGCAlJWXUbA+i6vb
         EGNBzaQYr4+ZXsR3bf/MIAoyZSaRQ0jLgg+1BNN3tR122KMr6dOI0bvUnHeN+wRtjBWK
         /NKw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793074181; x=1793678981; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vY8JNXJBEmY2//YzxHAKXEJvbfSWEbX5W88WIsAUIF4=;
        b=gZsTF0OPTx9bq4byhOyp9/4mQhWmm1c5RaWdvw+HxSI3AOsulmrlab+6VrLizHNo1Q
         ME1tfduSf/aNYai9m7Vh5Ghc8JAygD0d4OtYLv3rcx+mUFwzK259y3NU+fhUI+1PdCh4
         xUCFmu9CzVTi05evAmdOB0qcGGJv0xlrOzIldbvlWPciSrc3j21y82c4yU1rqT2cmKCN
         CmV89bKQZ1F6XpxUjy5d6p0/94LvxPY1LdxiUp4tMn10aN5JKEGw/yDl7hT2UoXLrmJ9
         UrcHILXYYyEWKrmJM4WA8INyic43y49Lc54zOrGLXBA2NHSAa7ETVWNrbzu4evKkubuX
         4ocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793074181; x=1793678981;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vY8JNXJBEmY2//YzxHAKXEJvbfSWEbX5W88WIsAUIF4=;
        b=jA3b2WjbNtpxOQtR9RuyZF9/vJ6RTfYYR7BjgLAed69pt+C//HtStmIUosB9Zjf6D3
         pGyNYJjl1SSE7rPjEH5ciN78NghyEH3NG0yixbobcnc3k3qHMcT04UOQVOys677UUPQu
         Mu3+x9ySyQpzq+8j8+XPW+0xS/XtNewTK4aKWAVI5Dp0U5/vE/EWkzKYCKHuRhbRCtyP
         9AHaIFAl/ItF2c3DfIgq/sU8r3amJMSOqV3MCWTEzRD+1i/3RYh7HPfdnI+clcmgV7Xc
         G+BPj3uN0GcY63fAYot4icAegODtv9Cw1kxnnja1zoWqHVkRZ5W+aNWBB6C8W5oe2dAm
         NpbQ==
X-Forwarded-Encrypted: i=1; AKwUvBzBpIZD61y+9/3W1zcGo//BLZhSnllFZPuvNfHo3HgOBE2a2pYO1Jc0smW/BnJ/31mhS9Ev3+hPH8w=@lists.infradead.org
X-Gm-Message-State: AFq9FYKCKFIWetvnxSbAA508+ZVeGLPRQR4T7TFxSnaJx5JHRRlAXUlH
	1VQPokrhdtbMxv9Na8QNt5a3Fj0kBiWt4uBRKd1RP4le5Xh6oSfrT9Dn4mRIyOameXveEyyr9c1
	Q6psNIEHo9Uv53NE4agpIZGnAdhReRCn8RxMv4QUN640I9vtZHJjpsAWS3hEts+HZNIiRu5AH1s
	h2vT2kRQ6Y+CaY3Y5VEQzvpXO6MpFBd9Yl843mUKno9Ac=
X-Gm-Gg: AYBFou1mfGoNxPredIf7g6uEqLvukrj8VflLnIlXhQn9I6rmUM+gWK3y+O+dNRDZwKf
	q0EDNm3qGkRjHz9O0S1ftBfBSXklERLn/16vVVCsdsbgwb4thCBPtv84TvAnOShNAJUqs+F4TlM
	/V7S6asTgylHCA2ygtg1yz63mbLdb3fZWkmUMz5HpWD661OA1AEzkML8quotkAm1Cd6RkE5tQeU
	4SmCOaTR9x5JWA3RQ==
X-Received: by 2002:a05:6122:d2a:b0:5ea:dbae:3cb1 with SMTP id 71dfb90a1353d-5ec232fd7e4mr3193918e0c.19.1793074181500;
        Mon, 26 Oct 2026 21:09:41 -0700 (PDT)
X-Received: by 2002:a05:6122:d2a:b0:5ea:dbae:3cb1 with SMTP id
 71dfb90a1353d-5ec232fd7e4mr3193894e0c.19.1793074180884; Mon, 26 Oct 2026
 21:09:40 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-12-7da3ea49c8a1@oss.qualcomm.com> <CAFEp6-22zEVoTQ8ewQN4CGW9GARZB84Mp_-SO7KrteYERSew2w@mail.gmail.com>
In-Reply-To: <CAFEp6-22zEVoTQ8ewQN4CGW9GARZB84Mp_-SO7KrteYERSew2w@mail.gmail.com>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 12:09:29 +0800
X-Gm-Features: AclHuK9zQUYmMt2_uRNQKGHKLEw3Bs7CkPsj4KjP69u-e7zyINlKrBFyGote1T8
Message-ID: <CACbMrhr3imVV6nNLisD+gh=wLPn8ziw8wRL0UW6e-6by2RufFg@mail.gmail.com>
Subject: Re: [PATCH v22 12/14] arm64: dts: qcom: kaanapali: Add CCI controller nodes
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAxNiBTYWx0ZWRfX6Ua6U1T2nV8w
 mJwmK9A+Q64M6iqAypGQF8q32Zx0BZInPl63LmU1Zxsv/Yo1649+6leNaN29Nu/Zy8BbsbbIHe7
 Ovwq6gJemh7Hc2sHiNDXlEp5LSJVKs0=
X-Authority-Analysis: v=2.4 cv=eMeGH3p1 c=1 sm=1 tr=0 ts=6ae02406 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=VpRCVQi9ATEJuri8zQAA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAxNiBTYWx0ZWRfX67+Rx0d5EVTB
 B2ZvZzsstUJSl99BfWLcbAMfWp0P3fqumR2yT4RYNkuUfzfa2wXdxPs3vL/ucRV6itNk0OOUmQ2
 gbfEEnRUoM12Lu/rwdmVCHUEXVkC6WMH32DYMZxkKHs34TzQP5f9Vz6qQAfscrP0iQZTwjQ+K7R
 MlyIzwHM9fdgVI9ACvOG69PUJcZ7ovpDuLTEeXV8sAE+Go1kQK61b7cymBdMZytJG1FAPjnHMp/
 ye8uWDhs0QsbBsuXViB/tBfYy503TxO0wrzBN6dLBOenWyckslx5dKtO5bx9q/Ny/Imy7H+g9lC
 0p1ksnLnFjVX61U0wZovW7UPXdqIRdo0qf4u6UUuyORpxnj2OY77qBY3J7E2VZkfBe9ELXB6N9L
 VkWtAWs6hfBh3nebSWk+Ra7ZEGjgUzAtnDnlCugtH8drTUqMIXoC5ACg/SznWaut9fv1ZH6W1kF
 Zm9MCbS8Ku0Uj1cGTww==
X-Proofpoint-GUID: YlX-dkT85krz2EBkivuviH8flL8Z0M8_
X-Proofpoint-ORIG-GUID: YlX-dkT85krz2EBkivuviH8flL8Z0M8_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_210943_972530_D3FB6AFA 
X-CRM114-Status: GOOD (  15.82  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjYvMjAyNiAxMTo1NSBQTSwgTG9pYyBQb3VsYWluIHdyb3RlOgo+IE9uIFN1biwgT2N0
IDI1LCAyMDI2IGF0IDQ6MTfigK9BTSBIYW5neGlhbmcgTWEKPiA8aGFuZ3hpYW5nLm1hQG9zcy5x
dWFsY29tbS5jb20+IHdyb3RlOgo+Pgo+PiBBZGQgdGhlIHRocmVlIENhbWVyYSBDb250cm9sIElu
dGVyZmFjZSAoQ0NJKSBjb250cm9sbGVycyBwcmVzZW50IG9uIHRoZQo+PiBLYWFuYXBhbGkgU29D
LiBFYWNoIGNvbnRyb2xsZXIgcHJvdmlkZXMgdHdvIEkyQyBob3N0cyB1c2VkIGZvciBjYW1lcmEK
Pj4gc2Vuc29yIGNvbnRyb2wsIHNvIGRlZmluZSB0aGUgY29udHJvbGxlciBub2RlcyBhbmQgdGhl
aXIgcGluY3RybCBzdGF0ZXMuClsuLi5dPj4gQEAgLTQ1MzQsNiArNDY0NSwxOTggQEAgdGxtbTog
cGluY3RybEBmMTAwMDAwIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQt
Y2VsbHMgPSA8Mj47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB3YWtldXAtcGFyZW50ID0g
PCZwZGM+Owo+Pgo+PiArICAgICAgICAgICAgICAgICAgICAgICBjY2kwX2kyYzBfZGVmYXVsdDog
Y2NpMC1pMmMwLWRlZmF1bHQtc3RhdGUgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNjbC1waW5zIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbnMgPSAiZ3BpbzExMCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBmdW5jdGlvbiA9ICJjY2lfaTJjX3NjbCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGJpYXMtZGlzYWJsZTsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc2RhLXBpbnMgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGlucyA9ICJncGlvMTA5IjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZ1bmN0aW9uID0gImNjaV9pMmNfc2RhIjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1kaXNhYmxlOwo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY2NpMF9pMmMwX3NsZWVwOiBjY2kwLWkyYzAtc2xlZXAt
c3RhdGUgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNjbC1waW5zIHsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbnMgPSAiZ3BpbzExMCI7
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJj
Y2lfaTJjX3NjbCI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
cml2ZS1zdHJlbmd0aCA9IDwyPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGJpYXMtZGlzYWJsZTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9
Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2RhLXBpbnMgewo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlucyA9ICJncGlvMTA5IjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gImNj
aV9pMmNfc2RhIjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRy
aXZlLXN0cmVuZ3RoID0gPDI+Owo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYmlhcy1kaXNhYmxlOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07
Cj4KPiBXaHkgZG8gd2UgaGF2ZSBhIHNsZWVwIHN0YXRlIGlmIGl0J3MgaWRlbnRpY2FsIHRvIHRo
ZSBkZWZhdWx0L2FjdGl2ZSBzdGF0ZT8KPiBEbyB5b3Ugd2FudCBncGlvIHdpdGggcHVsbCBpbnN0
ZWFkPwo+CgpUaGUgc2xlZXAgc3RhdGUgaXMga2VwdCBzbyB0aGF0IHRoZSBDQ0kgc3VzcGVuZCBw
YXRoIGhhcyBhbiBleHBsaWNpdApwaW5jdHJsIHN0YXRlIHRvIHNlbGVjdC4KCkFzIGRpc2N1c3Nl
ZCBpbiB0aGUgdjE5IHRocmVhZCwgU0RBIGFuZCBTQ0wgaGF2ZSBleHRlcm5hbCBwdWxsLXVwCnJl
c2lzdG9ycyBvbiB0aGUgYm9hcmQuIFRoZXJlZm9yZSwgZW5hYmxpbmcgdGhlIHdlYWsgaW50ZXJu
YWwgcHVsbHMgaXMKdW5uZWNlc3NhcnkuCgpIb3dldmVyLCBJIGFncmVlIHRoYXQga2VlcGluZyBh
biBpZGVudGljYWwgc2xlZXAgc3RhdGUgaXMgcmVkdW5kYW50LiBJCndpbGwgY2hhbmdlIHRoZSBz
bGVlcCBzdGF0ZSB0byBHUElPIGZ1bmN0aW9uIHdpdGggYmlhcyBkaXNhYmxlZCwgd2hpbGUKdGhl
IGV4dGVybmFsIHB1bGwtdXAgcmVzaXN0b3JzIGtlZXAgYm90aCBsaW5lcyBoaWdoIGR1cmluZyBz
dXNwZW5kLgoKTGluazoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2QzMGQyYjViLTAwMzQt
NDdmMC04ZTkzLTlhYmRlNGRhZDExOEBvc3MucXVhbGNvbW0uY29tLwoKLS0tCkJlc3QgcmVnYXJk
cywKSGFuZ3hpYW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
