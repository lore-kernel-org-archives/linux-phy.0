Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7FB606EE9C
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 09:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=We+MfgAB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=URR+HC7V;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kJ0IQVJW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0OSCBhN5T5t21aiZgcPvNj9Tj3X9QqgFk7J1h1TWf7s=; b=We+MfgABgt1oNZ2xmYFy6eJuRt
	u2njZCrDd28SzVUWXkxJf61rm1txebk7O/Kk+2yrphXLZq4TSbR9sTggOkQ1+70EHeiVDUZuOYIzj
	l3Uufjy6HrvKQOnbWWY+HlBGBzTCKUxz5ucPlu2gHZc9AlccUAtjJebp0SIbtKaC0Kf1YfYBYk6qu
	jQTckFU+AsYfrGVmvXRVU+8NbTTAYAaB+GR3XD2nY5QF3SY5NV2jFoF+iWzJlZahtEa2OgxfXgo6+
	1cftXqMYen4P22JELNOwaPpJvLiv00PW77seG/tUPYo9nTmCJ8VCy6lLTHSvOdFBVpeE97Z8VnpoM
	1DG8tKBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBHo-00000001rXj-14Pk;
	Tue, 03 Nov 2026 09:58:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBHm-00000001rWt-0Scg
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 09:58:35 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A37iN0f2402837
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 09:58:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h8VbAAq/OiCxzdza5wuB7U2i
	MKbdYZdGtWxp29XUI/s=; b=URR+HC7VSNmr26BD7sbjCXSM8m3Rs0mYiDc87PwZ
	FLwxM/2wDX7Gnbg7TdfqPYR41ymgU4Oq6J7/ehMsKuO/gvXjYuiU5POIktxva4aB
	3QK9UMWQ3Nxjia/YMog5YRWQHg7nyrepV+dbEr6BCxyk1j9trKDUL912mfw2D/58
	+YRYHsJBu8O8u98AeofTzeollGSOnG/YHBh4CHp2UKlO2WdHPcQ+9iIfkrgOAGPn
	8EGfyLTx6tAYuhzKSQPKeSGbBEew7HYJcu6le7wfgKX61uO3AtgYaDyqD72sAbXA
	JaQjtNmLQyVPnVvZ0fvpUS3grPXu302A06K7VpD0qkXsYw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq3uy29xk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 09:58:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91b7e7d5f56so75686616d6.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 01:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793699913; x=1794304713; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=h8VbAAq/OiCxzdza5wuB7U2iMKbdYZdGtWxp29XUI/s=;
        b=kJ0IQVJWRyRiCMRaVa0E/yb1e7z6yPhmp2WLGW3ZTW6zLwLhCWbDHiPuVM+XdvgK2T
         +eeu69hcVpFreh/VLtfeAExRMVHoOk10GpiWBswrL+Jlnfg8ovl0HFMENGtpjcydFRVm
         6zNgtq8RBIz+VArv8IFHKkgaz4gkSYdVnOGZ+BvwCn/bfTm91ZRxW1bR3f7TBoqEdf1e
         ngtM+HTBt8hmcIxCj9Z+op5KdxOrh6t04EN5GH32mRrsENTxXAD8X08nwN0u/mR946at
         +E6D69qCkaGLwt1qlF0setIf3NyIUbZ7MJo7F+5fP4+z8HA82zinvQqI8/6H97B0jyfn
         K1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699913; x=1794304713;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=h8VbAAq/OiCxzdza5wuB7U2iMKbdYZdGtWxp29XUI/s=;
        b=Vcpm/nxyvxfIzruCtGaULythnyT2J4scQIXBhp3kkYQ30KonVoCHLmAr+VZ+cO1KEn
         RfH17rStILxFbvOYJXVJWeUuNR2Pm0Eb5oOgLdgyBFYshRm7a18QTVD0X/oy/maoFSxI
         PaLpmn7gAtBUEuBoIDUhXHRxd5YtoAQQRchIHK4sGN65kHUQsxNMTlGXOaOdd/FmGbF6
         JWGQc0/4x3vHH/1BAYkA18ow3tqR3RfXAAdkA6XEBHsYG8taf201o4LFgk96TK4F7eJ0
         YLJezDX2kxFNYmgaiP1sxxCFW0zSS6U0Lm7eUHoSYWCT5J7ZFX0+HtJ8OM2i3ac6QIAG
         fPIg==
X-Forwarded-Encrypted: i=1; AKwUvBwWsPBqHOWDmU0IlSWrxrx0EYFYehuNSY1d/Rzgrp6H4iD/ZpsKkOzoyo/pQFxjYvAa7RyXmBWtDBU=@lists.infradead.org
X-Gm-Message-State: APuU4Z8wefKKPJ1AJUr6CgFRDJWBhiYT5/MtPk+aFbYyUcTG/q5rXmnW
	A5yTk9o/b2S+gzSY40JBwJSscL7/C5hT/lfJqB6Z5B6yLjMbBlkeMi/wdIKfbV1t2I5aNbXPu8g
	DNo6D2sGq0txiYOUThQgwWu3G0Siaa3noGvv1SBp+szi+1RV4RT5F+AL2zVQdA/EeTAfa
X-Gm-Gg: AYBFou0R3CnjZbWDayDG6uqTEWUPRKTnYLuNkxctrGJKvR9wDsiMAY/I+2qkIqhD7bb
	QfJwhuYXRnn5azFDm2kwNqKOKQdRfDmOadpvpxwXEF3r6854PPJ6f5gm7WIadlAWkM5Yf5dwnvz
	kh1dYkOjon3r+YOjts7Z+Ue+gqr588Hvz1aMd02jgyIBeP1hQDcDN3j4ZoumTtJAB2+kLzAFBOY
	XryW5VWwetV9prQNCug1srYGlBwvMI4nBgu14IpTMEMza4ojeL94V5AKA+7gGtXiDiw23V2P1o2
	zVILdIFMipE4ETXSjGsUqpL5WHp9uSxgPTRiYbMR63IN4nvPOhfWLk7xdOSIVSXiBe+dB68wrwL
	y4FekhE6DqasYImho4tb6oxae3pbFsNsnsr+lQyuyldrsYr11AEx74dytE9XT0+k=
X-Received: by 2002:a05:620a:2b43:b0:93d:92a9:1a5e with SMTP id af79cd13be357-94421799683mr2160884185a.37.1793699912361;
        Tue, 03 Nov 2026 01:58:32 -0800 (PST)
X-Received: by 2002:a05:620a:2b43:b0:93d:92a9:1a5e with SMTP id af79cd13be357-94421799683mr2160881885a.37.1793699911805;
        Tue, 03 Nov 2026 01:58:31 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a82cf248sm69051855e9.2.2026.11.03.01.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:58:31 -0800 (PST)
Date: Tue, 3 Nov 2026 11:58:29 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] phy: qcom: qmp-combo: Update SC8280XP USB3 PCS
 settings
Message-ID: <6ri5rp62hyh4iwhtlcjycjnjz4zfcvzt6rort3c2443azr5slc@ka7uyggocbei>
References: <20261102-topic-usb3_sequence-v1-0-5b144f5e6865@oss.qualcomm.com>
 <20261102-topic-usb3_sequence-v1-2-5b144f5e6865@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-topic-usb3_sequence-v1-2-5b144f5e6865@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Bce3ivNTpyGdnoT2k4X-Kb53Iam4LRnK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX7VFVuVBk09yZ
 pEUtFY5AZGYplMTru09RlxghOuhJosQm8DFSeqEAnY/pJSGhEadgjieMfCxDKFHj5OVMyQNShAo
 80aoQCXmWHWiiMoi+7bNlYdgGhQyqJNT5Te3QZPrpNCH2Q+j0fslaK6RFiS3gnz7r8byTUg2Lc8
 KBFVu7ah8TPXw3meygPT0Ra5WecBtPomlwrSWnbWgM32Nctt2la+OVrSYRH7maVqU03716fN9gy
 W6gDjLC0lL4oVtA67RQvUBopeheCnaywU+Jy04XfIuFe8UQSWYPbYnM0qA+iVEa3aWnj1XUZzob
 Nn3x/mn4dUOAqBTHAuiqpCbagokj4oQ/5kNg8AUNRV+HHvJsjG0033P1COqRkrprD0/FfKCCfCb
 FGsSIb6MNi9JUQ74Up53VL5oWOG1sUw82q74ZhKRBrDfzUDfSmgI6QwiUFTzPxKprDCvGLqL4C3
 +tKiJovg2GYfKLEAW1g==
X-Authority-Analysis: v=2.4 cv=VoG2kO2n c=1 sm=1 tr=0 ts=6ae9b049 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=T_UvXWJlDOeQdzyIPjUA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: Bce3ivNTpyGdnoT2k4X-Kb53Iam4LRnK
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX79StJ8j8D/Kl
 uX3hiDOqdH59wNUZHYbynRFes2ZvGy/9UOvJB/VKLDrzg9e7Lmq4RK6Q8zKi+RPYrVQC9BpXtxj
 WOCONAMrdAhyXVBam6SPEgyt+y4vtPU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_015834_155297_8F72946E 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-11-02 14:58:37, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Update the settings to match the latest hardware reference guide.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
