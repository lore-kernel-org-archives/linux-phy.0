Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E52B606A32D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 09:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IZhFwqsK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Us0N9EgN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SJu0HOWL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vfrmoefARahA9ceikMXakS7U00aU6R5q7wggO9iJkcI=; b=IZhFwqsKe0K3rsYh2Q4eeHb7km
	eyMf1QV260U4IaeiCyHAiC9a8hzh+vtTOUe9D091U/Q+iiy5ym/LbrPUCEaomKu32ZOoxDNvu3PEX
	5Izih6KSkb65vQLcPXtGiuiVdUGvIippr63/Qjucw0xRgdZJDeAHOx8Kmt9urpf2EnUM0rUJYgbfx
	/Midrl35B29oLjpkMzOvmeG4mXWjsxU1nKTLdajeAGH1kN5EYgjXEHDncUHTZZWxC7HCOPmt+TQXI
	QwVp0LYsV00x7kIqDU44/NotCxbjxa9+bNx0OiSKBgLm50RVTh475mSlNT4Z6IF8EWMlUG0YqSSki
	cIXQCMGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBG6-00000001rBj-3K8j;
	Tue, 03 Nov 2026 09:56:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBG3-00000001rA2-1zHS
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 09:56:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A353Gc92451177
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 09:56:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/ifhjCVZVvtRk/0jKZlaJa9Z
	7ofZnoDnw22mCyuV304=; b=Us0N9EgNjX0M802Yq0RrxyEGHcgnAt80KJ20E36S
	UYK8qNIGMo19dWqP2BJ+tHiw5NZs1BqsB1Xad/Yjafu2HDDwF7Vpiv7c0gXFkxhx
	chrraE6/UEF5BaDORw3CycD3Tqkw7B1z5tb4sC19GzR5yVkwmD6bcSmLglGMeRhT
	uC0NEtv7PwUjvEqt3GuXW93F04LliAPSbutq2bWp+Gfpabd+MPJMedxw8WRhDZGZ
	3daaKDrR2EnVimDa6QFyPhpk4DTb2Q+8vAOHcuTWJoWtAPnsShkYFCIjKZ737zys
	K7ShMRFz6aXq2Krwqke4o5FkW7XVnbxhh21kFBVrIuK7JQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq94cs47f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 09:56:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f1e62510cso868384885a.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 01:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793699806; x=1794304606; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/ifhjCVZVvtRk/0jKZlaJa9Z7ofZnoDnw22mCyuV304=;
        b=SJu0HOWLWGax4m63Qm1irb4Ju27zhWlMBKMb1Vmd7l/+6YADicMYboMDRAs5ZUO+tD
         kIQWYg5YKK0E07WWrhzcCoIY01wQA0VStkcc0ObkltlCcI/KdlXZeIBt9aLfrbr1qgnt
         Th9JedLwrEB9Axromv2AlDr311/nuNMfzDeEvRVcPG/D02Bh3qdU7HnWA2ucu4z8uaVC
         F0ko6YKXVZTOc92+eFuMisTrqJNrMRud0cr+TWRWTHm9zAMD3+yGVO29NcZH/R1/DAYd
         64j4XgBfrbJGsLCiJUuTBS+76PS02jN9VfDigU13z6VwC2Q2/djrKXxXN5wi7mXDejqr
         /zsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699806; x=1794304606;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/ifhjCVZVvtRk/0jKZlaJa9Z7ofZnoDnw22mCyuV304=;
        b=WHPNjrD7OCwXLR4vfQbhZr+R/pW5wnyYLguylMArg9eMYbT68S0j/f/3Q8lqqlnAOH
         j+3G90PADwvdGH5dwSWJt5mNniTnfS7cSZqxv9yYazBtuAtmhOHz/2noTMWkRB/FZjok
         ODd8a5D3JzKgsMcIPnECu1ZQzxSiNsyb6idomQhJTgEe6SKoSjXAXtexYGhXCUsfMhch
         gXU0HWe99JJX9yj3LG3KVLLCcurBhNPsKq1mGz6FIUlt+P+mDhLI4f9kax6RV8c0xLLF
         xLllTrpvdJjT6QyS9/rKvA3oiWs5z/vJ/VM1UlOWR1unTrNr+JGW/OglnmL7lr6giIcu
         EnBQ==
X-Forwarded-Encrypted: i=1; AKwUvByntuNIqKOPS5Kc1NjtwXwmMzanW65lDpszU/WI4pgGPMu6Zh0Ajb+smbFBsUEEnx+CTEZBtYxGDqk=@lists.infradead.org
X-Gm-Message-State: APuU4Z+Qac1EuFBPj/K3A4Mu+cbpSRIrLjRVopJiK5Sau6LwkX7HpbEn
	ClcH5Cmwk4OFuzB2WDSE+6Tgw8FPs3Ovc+sBMVfsAuYicLhtFYtSAYs62B/akQwNasMtGs9k7le
	cdFRRd1xq2VHNaO8HkUObloOeaRJn1Fij4pyzM2r1Ej7cu3P55HnrgTWJ1kFzfVqIe/14
X-Gm-Gg: AYBFou38BHlaIKjaWw7cyhcQQ8EcUMz2ZnDiQPp4RyJ4Jc1BcbCx+0GaVTKiWjLXycj
	0caQ2ax3QtvVAKQIMh5WaNf6rtnVP4axGUzDy9YIxy8etJHe5XEv+rPQnVFeGD9AjKBdjiwdszZ
	Vh1vZ23udJqYJFo2XMdmDfCj6Pjll1LU8wEpDcDpHF/87kNzQRbnyqK+hRn88uIZny2zO4k58Ts
	aqjLHvnJGsov4w6C43dbIQFOw0SaAibdMyCRq9KobYwzxowdL2AYE4ReB8BIafbSGxqRaj3iwjj
	zkdQzfJ4GsLVAayymJ+WbkBUfN+qUoP5EpSxxG4m4Bkf4kSzWhwqA1hulVVopk30+62TVYuzCkx
	ovGXpiHZjVbM2hBsDcO1Dww0ZfHaU11m6en1XdYv397QeR+BMNcDaHi/y5s0duZ8=
X-Received: by 2002:a05:620a:29c1:b0:93c:6028:6d2b with SMTP id af79cd13be357-9442175b5b4mr2182516185a.43.1793699805699;
        Tue, 03 Nov 2026 01:56:45 -0800 (PST)
X-Received: by 2002:a05:620a:29c1:b0:93c:6028:6d2b with SMTP id af79cd13be357-9442175b5b4mr2182513685a.43.1793699805095;
        Tue, 03 Nov 2026 01:56:45 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abeb77c132sm230865925e9.1.2026.11.03.01.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:56:44 -0800 (PST)
Date: Tue, 3 Nov 2026 11:56:43 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] phy: qcom: qmp-combo: Separate PCS misc clamp mapping
Message-ID: <sfnbemeazka5o2muhztakkfmh6q3uz5adfmha4vesdnqjf2uto@67n7ay2eymex>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
 <20261102-topic-qmp_aon_clamp-v1-1-141c2cb6cdf6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-1-141c2cb6cdf6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=O+KsLx9W c=1 sm=1 tr=0 ts=6ae9afde cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=cGOgi5_NMkWPeH9ql9QA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: mmfuOIDNO8snMa-WRfOGZzmn-SJco88r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX1sV48j1jixJ/
 2u8xOrfEIKIB6nX7tYPaUgieOk1hFzLo4onxZqScl6o6yRd3dvN6/lTHG0VG2Us11SDucwP9Xbh
 EWI1/I1e2nHEibJZu3qvD23sci5Kv/ykyzHyofX08ip41xB63RnplcowAXepI24El50EnTp1UQ/
 qnTL0XPsI+T8y0gGkf2sUI+aNp+FXlC9wREukyBNnJ7MMm+bhXRJa9ZctnVd34HvzpJXfHckB/h
 K6a9zdlObI7Wedr+HQvzXdxtEdMxkbIq1FusODvRvdPITRrWUptPPz/UXEWw4A2X2H5/EnSq+Q4
 KxSQ0h/a/IuMpl1HEilushQRbY+/SDOPsvmXGHR7aV5ksTGeAZdOXjY/5AtbU30YFbeuklgjuTo
 6uWySUOg2jv82dI+H6I8yUtgNXtBkVGYw43S+ZJMekt4udIEFPjncxJVMoBKV4h6yp8ovNUKmlK
 bk2EtpyhS9H5r0090Fg==
X-Proofpoint-GUID: mmfuOIDNO8snMa-WRfOGZzmn-SJco88r
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfXxz+lzHp0oWvb
 QKgbX3NRyx9/0K8tC7xv0sO4qv9CtFWOek/rDsFKXxgGCO/d+Dqbr2/XRi0sGee5C7BJu3/dMYe
 noh31oyMrgqPrnY/KffCtrupedJuxOY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_015648_064777_A16E4BD2 
X-CRM114-Status: GOOD (  11.34  )
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

On 26-11-02 14:59:32, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> PCS clamp offsets can belong to different register windows. Using
> QPHY_PCS_CLAMP_ENABLE for both the AON and PCS misc windows conflates
> those layouts when a PHY has both controls.
> 
> Add QPHY_PCS_MISC_CLAMP_ENABLE for misc-backed platforms and use it for
> misc-window clamp accesses. Keep QPHY_PCS_CLAMP_ENABLE for PCS/AON
> clamps.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
