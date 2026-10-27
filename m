Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE144606A32F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bJ+PWf+Y;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=JvI9dcQF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SogLDCuU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R7sh7rjycvkNABjw/skztjg+zRovDr1u1ESJIRQYD8E=; b=bJ+PWf+YU9m64DfiM8+urGd14+
	7121SKbdpsuGWI8HH6s/s+DQ34cqEnhexyxdA/QN37ppsFrcnQ5jNz1+jlwIR+vi5G3gx2CWtr5kc
	w9U6Z9DX/lowsZxNq2xDbEc3MHNKA9CUQisX+9Q8+xucPTIcX8FqPa15t4RQY7xwZP3klApwPtmvY
	voMVC8x1xm9iGCflhjJdQdHxfqNchb31Aq7CiLn99WYFY/hrP2NU+esIe943kAXIfwOGU14l61PjR
	uA4wDRyRr9esUakg2g/erVwYCwdhbtUM+WazibgCvVrQOapUgiauPArKaMCtMCQ9MA06eqDKxDL5m
	1ahOXkmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfBB-00000004SrM-2kXS;
	Tue, 27 Oct 2026 11:17:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfB9-00000004Sqj-1uzq
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:17:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAdxAO1973338
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:17:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0HUZxBK6kLlN9yABBCF2IbW/t7a+9RUBtdNWeHBGZRo=; b=JvI9dcQFSN8YtCnM
	pkfMGvrVPecxUrUszM4xBRUQG+TkjY9VZl+aZjxwnyJtBYpl4gKa4u7O342w970q
	3/2G2ggrcqfk6CnEuSgL0QgKRBD0cZJYfQJHrOou3DHNNmnWzLFb6rQbfMmu4zmn
	WLpNGCEwPP5K1PFBPd+F7n8fFTfBaDbyiC6FJt/mVfIiuJz7f4wARc5AwGCg8FJM
	teipzRBnP2WagbRz/kVHDtkbUI3Ql03AJRwAcRCcorisscyKtejHO3nm/jOgwwm8
	CPf9DoqZorCfg5lHYborF5etKQAeXnPxcmQ75FhXYnG/NQxC0kQA5cNqJIgShgHf
	HViKqQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjst1g94t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:17:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3ac0ae43900so3931864a91.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099838; x=1793704638; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0HUZxBK6kLlN9yABBCF2IbW/t7a+9RUBtdNWeHBGZRo=;
        b=SogLDCuUcqwfXzz6P9RF54x1soGc1HecXIN2OyGXpGRoaidPRO//65mZokoRoZ+O/2
         GuZOGK9v77Ptt1SuwEfvi7gFQehLvHgGHR6uToB0rSqBaHCh54GVqziuvXEksJT9UTx2
         yqoqAVkDIxa3MRy7h5Opyg1i3f8K68+KlyNY2h6jqj7GBrqZUBSj8AihJN8IHa6ozMxL
         kGgBoBS2Uy3KNLNYVo1PV+sGq7t/sdalHHeByC16pgtyXOfEQ4QSlp8A2l0aM7ixC+bA
         uMTinkfnWy97FKG+RpWNGD50nwCrmnc0FqJJnH1wCpwlEKgZP7QrFD/GhCG6hINf0VCd
         4evw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099838; x=1793704638;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0HUZxBK6kLlN9yABBCF2IbW/t7a+9RUBtdNWeHBGZRo=;
        b=nOWi3RNGLbfbOSzvnBieQNPE9MwibGNd+rwKaaIVVbRtQ+TjzsG1Z3LKMdlf829z58
         fSl9G09VUxWooF6qarOLIWaMi6Ja2vKGHvrl2ZfW1mKGgjLVCWYnrOhanBHYEldHjaHB
         aWtDSwVrB4lW2/M1SyCiJS9vl2weL0Id6EnRBiuTrOEPNjvKFdY9Qc0uJH+K/1cu63zU
         4/ERy3zthhG7z83lH+lgWoaWOqZ+xzgTYp6IaFDvVdZ7Pcxo+kBGf39N+Ew2D+ZMLdZ6
         ZNksEs8vOotR23e2LKZpfyVBTAZ+ResmiZk7ZwA4DrY3VS9C7S9DM8srVQznNKU7vZxS
         FogQ==
X-Forwarded-Encrypted: i=1; AKwUvByTB9VVS5DDqtjnJ+DNjWgiS5Dl53uV3Txo96+WsxRkI4v6x6o1PRpeebm8qQRpXDMRCpVOU9YnhlI=@lists.infradead.org
X-Gm-Message-State: AFq9FYJRRfc5F8bhC+urrPNcJdkcT9vNiIkIashU+l4/R6wvftuTt6iZ
	e/N026cuSTlC6eEilSQ0GQOElLoX+KFepSSltOIN9eovYD9wzRX21Q3DO8+V5jhP5ksN3pk0QEw
	IEOStmFJlCFfV1NSozLcjoffzd68H6TjPOmZU43WgXes2a9dn5ulM+HEfLiOeGWHmqaOI
X-Gm-Gg: AYBFou39UwaMieruKxfHvDexMYA/Mq+XAuAb+DS79dmtL13ghRTGkyJ8PqrTKSAgzgV
	dbfQn0GPy5jI7nzcYzxRiMH5l+3Hlb3ni4HYs5FY95tQb6C3cRew9L/VgRPBJyoAJOke+VNAZPC
	qXTzptPgPRhTIOI0uw6+bRKtGUgjN7tFTxsP0sqLVoAQOWw/Sq5tfnZg6Q9iY/jkNH9Vzhggmqp
	nKYwb+0KFvMJmlN2iJd4KWzwGR6ARwJupJhcIsO+kGbRbFw9GpZ8gcwwJaADSBT6XusJkCQhH0T
	v0g5eMIxe2up3/U6Brzg9w4zbSa5GP5prmicY2p7Nke37VBNQ8rZ/psgDPKQJxgccpyHYJvxLzh
	4w2XLYCLB2wKTCSrCqEToveBXiHJuMoQGTCiRNvglBeQNLHcEZSyBP9xOcNsxYV13zIZimiROTc
	yyJg==
X-Received: by 2002:a17:90b:3904:b0:3ad:9ecf:2b88 with SMTP id 98e67ed59e1d1-3adeaae5caemr7900154a91.19.1793099838200;
        Tue, 27 Oct 2026 04:17:18 -0700 (PDT)
X-Received: by 2002:a17:90b:3904:b0:3ad:9ecf:2b88 with SMTP id 98e67ed59e1d1-3adeaae5caemr7900124a91.19.1793099837681;
        Tue, 27 Oct 2026 04:17:17 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adeba31797sm8511118a91.1.2026.10.27.04.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 04:17:17 -0700 (PDT)
Message-ID: <857cd18e-19a2-4329-8ed0-a61228112b96@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 16:47:11 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/11] phy: qualcomm: qmp-combo: Remove VCO_DIV
 programming from qmp_v8_configure_dp_clocks()
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-8-3848c2615d5a@oss.qualcomm.com>
 <11c7f9f6-7a9b-4b46-93ba-b74153744a1a@oss.qualcomm.com>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <11c7f9f6-7a9b-4b46-93ba-b74153744a1a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HJ1WhYtv c=1 sm=1 tr=0 ts=6ae0883e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=aezud_-g-FnJNVpHNpMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: YnMFL5Sc1S3_9AVEBwXkLFTf8DIyS25O
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfXyfLEIUHRH65w
 A264QRY8xWQXesY8ij0Zgu43je62I5YyaXG7LkpXNsmaXDdQ9RIGbSOo3t3fsSwJtwF9X5XP1vA
 AosQUv51O8/Pv6Jd+mV1D0ZQlbf7+/w=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX1ou6R5L/ScUP
 W4kF2AnIsuslwqqvZPJcjFqbw0KMzov9gQ5gdSV35KKM6Yt0SiPF1msmYNi6etPPQ+p227R3P4N
 A/ictFEIK5E9daX0QPG1DNrTbKtBL5V6Bx/quIqBQl0HZlPA5tHdgwGnjmc9IE9Dn88tzGemB4l
 mdpniXjLrsKvE7tMlh+gRZBAzhuEqrVFDJkQeBwlfq9kN/tLKKhmYvmq/IPE3eAFP9i4IxX06CC
 vnlyN4HWrwiLIRV9Gz86IG7c/kNXURaLhouaOpL6p5P3P1/+2Pkkipljb9x8MjpUe9qkijd2Vdk
 LgrHOjRoKckHkIDwqWl7/AY3+VTcdfm9bYghbJnurgvX66prPUXBGEIGOtNogwJbY3hcjjav1Rk
 0s3VjeXGutolhmU2INDmRT0Izkv+YqnXWV6sqWhWOLAwf9dRtDEhWlY/T6+MnaQ9A6XhAUlJO/p
 vofA5kLUw5oNBOekHmg==
X-Proofpoint-GUID: YnMFL5Sc1S3_9AVEBwXkLFTf8DIyS25O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 spamscore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041719_510389_94CDC3F5 
X-CRM114-Status: GOOD (  12.28  )
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
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDEwLzIyLzIwMjYgNDowNiBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAxMC8xLzI2
IDExOjM0IEFNLCBOYWJpZ2UgQWFsYSB3cm90ZToKPj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRl
c2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4KPj4KPj4gUVBIWV9EUF9QSFlfVkNPX0RJViByZWdp
c3RlciBkb2VzIG5vdCBwYXJ0aWNpcGF0ZSBpbiB0aGUKPj4gZGl2aWRlciBvZiB2Y29fZGl2aWRl
ZF9jbGssIGl0IGNhbiBiZSBsZWZ0IGFzIGl0IGlzLSBObyBpbXBhY3QKPj4KPj4gRml4ZXM6IGQx
MDczNmRiOThkMjUgKCJwaHk6IHF1YWxjb21tOiBxbXAtY29tYm86IEFkZCBEUCBvZmZzZXRzIGFu
ZCBzZXR0aW5ncyBmb3IgR2x5bXVyIHBsYXRmb3JtcyIpCj4+IFNpZ25lZC1vZmYtYnk6IFJpdGVz
aCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6
IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBOYWJpZ2UgQWFsYSA8bmFiaWdlLmFhbGFAb3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4g
VGhlIHdheSBJIHJlYWQgdGhlIGRvYywgaXQgY2FuIGJlIGxlZnQgYXMtaXMgb24gR2x5bXVyLCBi
dXQKPiBub3Qgb24gSGFtb2EKCkhpIEtvbnJhZCwKCml0IHNlZW1zIEhhbW9hICh4MWU4MDEwMCkg
Zm9sbG93cyBhIGRpZmZlcmVudCBjYWxsYmFjayDigJQgCnFtcF92M19jb25maWd1cmVfZHBfY2xv
Y2tzIOKAlCB3aGlsZSBHbHltdXIgdXNlcyAKcW1wX3Y4X2NvbmZpZ3VyZV9kcF9jbG9ja3MuIFNp
bmNlIHRoZXkgd2VyZSBhbHJlYWR5IG9uIHNlcGFyYXRlIGNvZGUgCnBhdGhzLCBJIGJlbGlldmUg
dGhlIHJlbW92YWwgb2YgdGhlIHZjb19kaXZpZGVkX2NsayB3cml0ZSBzaG91bGQgbm90IAphZmZl
Y3QgSGFtb2EgYXQgYWxsLiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJJ20gbWlzc2luZyBzb21ldGhp
bmcgaGVyZS4KClRoYW5rcywKCk5hYmlnZQoKPgo+IEtvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
