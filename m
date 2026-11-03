Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DB8606C53A
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 09:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QMq1/Bnw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QF6KM6m3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=fb7j1U8H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5oxzAX2BQHjCcQZ6DR0X3MUkB88zi+e+n+JgdfNK/Hg=; b=QMq1/BnwUqnisTEmWN2Pvh+HCz
	5YMdpgGPy5BPJoEz6lteQlDYz6Z2HC+ypb6bV2hG19A2ym3O+iKpfigSYsBmDM9xTYQiaphlrHhUl
	NIXj0pKA3NC36QVWcvHFbD9S/a9iguH/5ZT5Z9uc8lk4vT9NwiTxps1nkrXNta3rD4wmTj6hueDtQ
	C0K/ovlSy19hr6UoZo9WExxrhbM34soLSUmecg7kJk82zVBm0XTKysj6dH0VyJSU5BVvw5byZOlL5
	WTMj20I2TzwtMn0vLryLep4aQOPL4s13AVuz7VR16N1g+4gyGKvqWpfQDRf6KBrngAX6zR0PeZNWV
	R7pMCg4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBGe-00000001rJF-3eeo;
	Tue, 03 Nov 2026 09:57:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBGV-00000001rI1-49yo
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 09:57:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A37vem61431337
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 09:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RUu4adMy/np/5W9QC2VHk8T5
	G7ZIH4XszZOFCwv2tCg=; b=QF6KM6m3+774BxDUU1jqCPSbTY70tkIHZvdkUNu9
	JG0vw7oMLFZ0DA28G2LztQv+fViXH+2dY1brB/OagRW9DdYdLrdcvXYJjliOm0/T
	mx2pp0WTsCkNq0BT0L5HJu7efdMalYzwuixTQEo0ST9CzeHYnoO14PIuRczJ/u1h
	/lJoKvYPtu8dfTbqMQUAMrgzuGCECGN7dGHvLhmA3vxzwHR9sfKaREQilEY31MUX
	iByGJmPnsVQtcD20HhIplv4VHM0iyOZia316DFArPPftA51BOY3hzdJR+OY4bg7l
	8k+rVvKRMLkasUdRyfYleTyxZb7onEhI3G7Z8R2RDBbLNQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq08734h6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 09:57:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-91b937ecbb4so73751906d6.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 01:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793699834; x=1794304634; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=RUu4adMy/np/5W9QC2VHk8T5G7ZIH4XszZOFCwv2tCg=;
        b=fb7j1U8HAq2/1j1vBCm6jiXcY7vchFsVMaCkc4Xw/VqTYOZIPfS/m0xmDhizpui2cP
         JdYcliH+A7LJ75Mmm8X5+QEeasmcPW76UugpD+utWOH6FfwSC6PtH5Y92rApG0qEEFUU
         y8A1WW+vNIMbmZ2Ul7/ydHbBv/vWlO/IkSJYl8+8XOm+fNU4uWzE2G+a1L/BnfVp9zdF
         B45+5QoNCm7ziQmz8IQ9twgINQVOP0bQ9PZoN7TYEvbVfCQEUh7bzfZWGncQcpGJ3urw
         iKb9SgUyBnH7QPklklSP6ywMzGC7v4jsvosCtXtU6n0368fy8zf8toyGBUtQXx7WKLAh
         2oGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699834; x=1794304634;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RUu4adMy/np/5W9QC2VHk8T5G7ZIH4XszZOFCwv2tCg=;
        b=hV+RUeY53eGIPVIm4to+BUc23TIHTlvTRUpNtC9IJ0Yc66jcN7bQWTGU+QezE3kw9t
         RJ/fhG1sN7n3cf20Rv9F/sNpx/jTtgmdEKjemDeiW9yV0BjQavcf7UE5hA2lDRcvbS9E
         xw7/KQt/y8L0kcRugnJOvX34p6qcs5+fLVs6duwwwr3zSVL/2j/udhGgxMhFkj2dm/OV
         kSZUHB8hTzOodDSbNE38DovLFB2l2E+cOsIwYU5+axaOG/5O5QO/MM5wBp7PuR9sIqKg
         4JgBKG4m+jm3v/QTTBSnRt/c22GHfg1mmYccbru+UJopSaV2ayaOTP0Pe2IrL93Hg5S9
         fH7A==
X-Forwarded-Encrypted: i=1; AKwUvBwiphTuPHWynRvRmyTrp1mjpYX1cP6wSRTcXJHh1Hq48JlUA5KYRtNgCtmvQ5t2BXOLFr/XEhtZfpw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8CMuOQVwGHtfMHw3tRL1CwaI8bB9+AAz8wZMRUMtS7VDJbxNdJ
	gzruQtix8EcSrk8V+9blGe6ekp3AQZmvsl5yaxtqU728BiBcNUpMUof6YCMDv0v8ikPE+iA8ud4
	grXLxV3fO2aSb6dfBgJNwi7fdNZ7AeFfM3NRNCEPfldNymV831ijuJSpfhxjPLVwYuB0o
X-Gm-Gg: AYBFou0Sds7AsXoa95EO92zW3CD/+BgqMXI3BNtRPwG94vSTXQ9ISwt9GNhdmZ0EV+i
	O/s66Td3IPnofvIx7cDS8SRdoqb+CSwL86y9AsOAFs1yy0iWzcIRoQRbKZ8Ga4Qt/pxTaASqMX+
	fDg9mM7L7WQcXXzXoBIcHCnfclQ/1skJrmlUvxXdClHb/SBVCbjLqw1FNIJSwDyOFT/zRIed0ob
	0akseKYDI9c+e8hRKSpYFOmIMHD1nWWvaB8dYiEIjhXm5ZtlCH8eAHe8bErrO7UvZhtNOM7ajN7
	bRwVC4K86yvRIbWoRmWiSLmdMJ3Fl7ntPdbSrfv5FDfTEwbUz2ALIy5k10J/H792v0cSnZaoBSB
	icPAWhXJeffc+VAwRKgr8QO/NjjJpHdWevQDUKBeOp5Qx+LP+Htqez//8xwraIZw=
X-Received: by 2002:a05:620a:bd3:b0:93e:f9ba:690e with SMTP id af79cd13be357-944215817e4mr1946737885a.3.1793699834143;
        Tue, 03 Nov 2026 01:57:14 -0800 (PST)
X-Received: by 2002:a05:620a:bd3:b0:93e:f9ba:690e with SMTP id af79cd13be357-944215817e4mr1946735185a.3.1793699833543;
        Tue, 03 Nov 2026 01:57:13 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a96fc933sm48333425e9.11.2026.11.03.01.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:57:12 -0800 (PST)
Date: Tue, 3 Nov 2026 11:57:11 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] phy: qcom: qmp-combo: Make v4/v5 targets use the
 right clamp
Message-ID: <ekgjrfx5d2omjboiqkougpyox2vpgj7ybssjxirwrdicnpjxpu@fzwtmff544rq>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
 <20261102-topic-qmp_aon_clamp-v1-2-141c2cb6cdf6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-2-141c2cb6cdf6@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfXxWXYArYoNdm7
 dJsv+WIvny8MLLmgJcWAh1vCYw2LGthv9y4qYbsEz3O6KnAF0sZN9wrgSYNuSeRzMmIjWNniHzB
 fyX2WsMNNNW1TgapOmKiHxSaQdrYd6k=
X-Authority-Analysis: v=2.4 cv=K9m3jCWI c=1 sm=1 tr=0 ts=6ae9affa cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=uguNxjVQdpYhtvE0XFsA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX/XjAVIEB3H2e
 QMiNO0NTc40bz42EAdoi9mUUjN1zghaskxbkUOhfnRGql2LWprScD6SJJYIgxWG6FXVs/iCX6mg
 7s+h2fhmb43+hvL+Kj8L77H6cmYsWXI6DGfVe+n1BlJR1NnAVfckyCYW/h6ah6vJT/cXGySPOkT
 xK4MBEmkZTSb7P6OJ8rPUhMiq2zXTPnMzYw5S0dgXe4x12W9qGXhguVFc/Boz+4UbNL9gakGfaB
 ChFAAOxzvMiGE8kE7ZQC4Vrquz5/dmp2hi8SbFobt5xoyrYD6xy9467N+HtZNVDAmsl51vpsTaZ
 6xwBxqirGmkabZrfzr5baCdUy7vHwoenV+bzBAnOwcsQGVRFyQhvYdIESdvVYyRNTA+TLCYcz0E
 Nj1/uihBjbnSR6TSeNlPcRVE8sUPkaM1mqYsyGMgYSz4QSRjjcIaIIqcl8zWTvNvbePVhdtKpqD
 7cJqMSfviQobYmQEvrQ==
X-Proofpoint-ORIG-GUID: fKyMSuzbXzSMQidVCXrgKHPeeaZnmiR0
X-Proofpoint-GUID: fKyMSuzbXzSMQidVCXrgKHPeeaZnmiR0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_015716_142598_A179446A 
X-CRM114-Status: GOOD (  10.88  )
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

On 26-11-02 14:59:33, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The clamp in PCS_MISC may or may not exist on some of these targets,
> but in any case it's not the right one to assert. Switch over to the
> one the hardware programming guide calls for.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
