Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0D0606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DqYR2a83;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=nYElmgpm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=N7cJYBeY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/F5nSfsCG19RSmzCCI4J10YCzoH3IrSL8sRjNd9yClU=; b=DqYR2a83hTBL06flNQUGwceAOZ
	3yXVJ1IBIL8o8CqeLE44SNSbizbuyl+cTDMIXbZLWLUpVsCfPXsob3hBAkyYtHkutSDCIV7yCMKYR
	dZg25tByHM3/JY1nnVMoo7uBwXjnHpLSHiOTm3GTah8smb8haC2Y98cAv+lRtY5Ypma5ADsN0UwK5
	BMtub9fDOcZsjQD9ircisn3toFk8lviSwoyF8L+6WsyyG+AT2OCIqzbmjoIiYETKIvMhYiqEyr9I9
	EF1DLHYIwPibZNqv53cT/dNw1h5pGygnuXKnELQl9F4ElxzSU+rTkCLFtreU6msnnfBLClq6JiS+W
	wWygUnVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf9g-00000004SkA-1MsV;
	Tue, 27 Oct 2026 11:15:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf9d-00000004Sjn-3Nal
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:15:47 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAeUlN1063061
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:15:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=clFZbp6yNCB/YE/B1ve7L1Io
	Y6Bcs0zpZMjkhGO28Kc=; b=nYElmgpmdzTiT/98uSp7vg3/UTN89eAvFjrP2ULr
	r/ddRaT9EB2Xzc1S8YxCdrFScOifda03FyieisurvtoyactKVdG3NtwLZeIIskjK
	Vsf2MgJRWuhc9Om7fF60wtLQX2ShpdrEn6j/wB3visIThtxRFRasojWOwxBKOsyA
	PBnyjkctfLOt+Twzz7PjIaYn7e2AOdHXWuuab27wPtsQRSWyTrb/2Th3Kie2nDNi
	EYZxXK7wyWtNabwMOsDHjNL6bJn6PcJKnSVhKsc09K5UDxq90f+/cFZVeM87wSjV
	neM6EFOVnaYB8kC2RpFHEEEnULTo2r1kEt6P7TZW5AC3FA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjp2t97fh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:15:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-934963b2bc0so770864385a.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099744; x=1793704544; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=clFZbp6yNCB/YE/B1ve7L1IoY6Bcs0zpZMjkhGO28Kc=;
        b=N7cJYBeYWXgt5w44XQhhIsSiCyFEG9itlHt5bHI6KSFhkBlgsUH+zOuj48wfH2l3Wq
         9FToC5ikRhMUO3lwreRj3YGEYHQhxNoQDkyyTh4DEk8FcbcDTwTJA1Bi/Pt5RQ8rStt+
         J1wa6qp3+YRJOxi3K5AaO1hUFToF005u2RruUljH5G5m6rl5CPGXamdzEYUlYpsUuvA/
         yheIPDY7gmOmU5dpSYpCBKbOreZ4oLYlN4IVTK87eBvaRXKD6sLMlppmO8dRx3/QaPs4
         uvlmDpRCulDZBfjuzkEfqmwhd+rbRy+tj40VDpoFzXO1sRZ1y8cehhPqQI5j1FmLZ0UQ
         nLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099744; x=1793704544;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=clFZbp6yNCB/YE/B1ve7L1IoY6Bcs0zpZMjkhGO28Kc=;
        b=MEOTcy1NIeEY+wJsKEIAmbljCp/kYHcOUxwV2R4Tu9biK8Fy6mCsgiCmpTk7bFtK4E
         AHCgCuAnXJIbg7/5zljxqQdUcEezUxqE5wzmA/FUR+jNuZBnYJlhYB99bpwH3wHGT+vY
         CoHy4c+itIT7KQILow6XRev6L9a7AtNLGT13VWLvVfRs9ezYEPEUmIo95Srt8wrdjzBC
         FizRqfRNl2oAZaNQwslDuibag/VVA2wx0v/885xegTYTJ/AfaP1I4ExBrw0GCSb+3gBf
         7uvMMht6Duj4kV1vD1MfwF8c/9hoqGOb+VqLysDZIO4Pcc8DYZCOe8ApNqxl1ej1nPRh
         3uqw==
X-Forwarded-Encrypted: i=1; AKwUvBzoe/kmiR9Dfq10LfEvArOakgFf7XoVPm60GBZMa+U3UBfufgTe3dTS7oi9iVQbHBRQC6EfIPhp3DM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJAKi3bWUuLSD9WQRx4awlXRYuhKafw7Bngj8npOiUtWi5y6PoB
	Plq5pqKPcBgmTnsTgtkPjwqXoAVMzoOnOJpQVf+zgWHJ/alUa9dcZZ02ikMgUtKFj0m8lNmkjB8
	Gdtnx01OQOgtT6I8r06rCmvZcyFHoJ8xQIPxmYthzLYMC67RpFIkgmsmDQW2B/RM4Dmpz
X-Gm-Gg: AYBFou1OQufk/LeyB/yaHkL9fFEZyJeZdx72P4aNPS+dd9DU7Op6wyDKNwdxN6wQaSA
	PIcIVr1VmCn8KOrJAVpsyQ0JjvNZ7wPqW2E5xB9rT1/Xwa+mU8h5/0dUrHiy1bo8S+plbOUQgEa
	rLoYUP2/82jGn0jayVEqPp5amihq/7BV+YMhVth7CzLEEkZhXIqOmnqzO+QbzBIOcQ/uS+j8KMc
	lOWKbMEl17n9oJ17SqXthF59l+8KHnolLTlFYVVrdu1c4YgfPNZrOrrUOMBMCiGBqwqKMlI4QGR
	9CkduLXx7vVhWtPDlRIFOaQzGjgfaso4m0Tl+Q6xLQaRP5nMLXK7/ccPjIua+DGnFzbu7YMiSF/
	2BedwKooz2reQ5gWS
X-Received: by 2002:a05:620a:2b82:b0:93f:5f83:2ca4 with SMTP id af79cd13be357-940ef97bd9cmr1448742385a.51.1793099743948;
        Tue, 27 Oct 2026 04:15:43 -0700 (PDT)
X-Received: by 2002:a05:620a:2b82:b0:93f:5f83:2ca4 with SMTP id af79cd13be357-940ef97bd9cmr1448739085a.51.1793099743381;
        Tue, 27 Oct 2026 04:15:43 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a35a2e8f25sm262014585e9.14.2026.10.27.04.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 04:15:42 -0700 (PDT)
Date: Tue, 27 Oct 2026 13:15:41 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Peter Chen <peter.chen@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/1] phy: qualcomm: m31-eusb2: Add register
 XCFGI_159_152 for SE0 recovery
Message-ID: <2e2t6xf3mnvauzi7qyh4gu4ngzrgaijryggj5kpyhrizimvnvt@vth2h3bd2g4m>
References: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AJjzCM5L c=1 sm=1 tr=0 ts=6ae087e1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=fd6TEVAS4L3J52g8tvEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 60mJa-d3nkdWMqfFIJhqJpVRrhIJaG5L
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX+FK0FfHpfPmQ
 5GiE4YT15J/XKlNDGZLELwpwUjmpLZV6xxE0Sm9+xnZvs8QdvmEKsZyK7bEiWCsdFzbAUyTwXvh
 VIvDB/uJvTsrqKon7oGOwdfqbPd8i60=
X-Proofpoint-ORIG-GUID: 60mJa-d3nkdWMqfFIJhqJpVRrhIJaG5L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX19SNcCoZATCu
 7irxNabHkUAi2EQOcC7pFmqG1Qzvbg+5/VibHMhdbM0PxKkx/YYckfUvylZmnaCs3235H2NYL+n
 rR8Z52E4SBwHJZjm6L9lkSlCBDhWFYpNwoedxJPUZ7fqId9YydvqCiGWsPqsCltJ/WteV2QfrBR
 Cbqd3xXs01UswojPl3g23AhyThTfgxLBw8/Z6WuKKU1RSveeIiTCqB4BwCznWnahdOzsNcGkt8w
 3bYwGdsGefFMdP3T6JyWSNaR++ulR80GJl0OoqRKB+FGrttVRYXZQWAl0ZggeBVw89x5yEHP4aP
 dSVGWkOqf5Px+ke+kCBM6taDmoTRYTkoNEci7y2t/C3cs9Y+eoFhJy3M0qLxrYOflytFD+BSAfo
 Ded7eGAIag7OJ7Lnw28auBlhHlQ61oQPyw0M5T/thnTWFl7kTGUoDf7oHt/oAnZNoagU9zTimS4
 4JqLPbs7Xa5R0pp4aBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041546_134378_3C1DE73B 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-26 18:55:45, Peter Chen wrote:
> From: Elson Serrao <elson.serrao@oss.qualcomm.com>
> 
> This patch introduces support for the XCFGI_159_152 register to enable a
> hardware-based SE0 recovery mechanism in the M31 PHY when operating in
> host mode.
> 
> During PHY initialization, spurious pulses from external devices can
> interfere with speed negotiation, potentially leading to abnormal
> behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
> controlled by bit 159 of the XCFGI register.
> 
> When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
> activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
> before entering L0 mode, the PHY interprets this as bus inactivity and
> resets the state machine to its default state. After transitioning to
> L0, the PHY resumes normal operation in accordance with the eUSB
> specification.
> 
> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
